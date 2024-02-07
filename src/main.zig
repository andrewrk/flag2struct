const std = @import("std");
const assert = std.debug.assert;
const Allocator = std.mem.Allocator;

pub fn main() !void {
    var arena_instance = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_instance.deinit();
    const arena = arena_instance.allocator();

    const args = try std.process.argsAlloc(arena);
    const input_path = args[1];

    const contents = try std.fs.cwd().readFileAllocOptions(
        arena,
        input_path,
        1000 * 1024,
        0,
        1,
        0,
    );

    const ast = try std.zig.Ast.parse(arena, contents, .zig);

    var arch_nodes: std.StringArrayHashMapUnmanaged(std.zig.Ast.Node.Index) = .{};
    {
        const root = ast.containerDeclRoot();
        const node_tags = ast.nodes.items(.tag);
        for (root.ast.members) |member_node| {
            switch (node_tags[member_node]) {
                .global_var_decl, .local_var_decl, .simple_var_decl, .aligned_var_decl => {
                    const full = ast.fullVarDecl(member_node).?;
                    const name_token = full.ast.mut_token + 1;
                    const ident_name_raw = ast.tokenSlice(name_token);
                    std.debug.print("found arch '{s}'\n", .{ident_name_raw});
                    try arch_nodes.put(arena, ident_name_raw, full.ast.init_node);
                },
                else => fatal("found non var decl", .{}),
            }
        }
    }

    var arch_map: std.StringArrayHashMapUnmanaged([]const u8) = .{};

    for (arch_nodes.keys(), arch_nodes.values()) |arch, node| {
        try oneArch(arena, ast, &arch_map, arch, node);
    }

    var bw = std.io.bufferedWriter(std.io.getStdOut().writer());
    const w = bw.writer();

    for (arch_map.keys(), arch_map.values()) |k, v| {
        try w.print("{s} => {s},\n", .{ v, k });
    }

    try bw.flush();
}

fn oneArch(
    arena: Allocator,
    ast: std.zig.Ast,
    arch_map: *std.StringArrayHashMapUnmanaged([]const u8),
    arch_name: []const u8,
    node: std.zig.Ast.Node.Index,
) !void {
    var map: std.StringArrayHashMapUnmanaged(u64) = .{};
    var num2name: std.AutoArrayHashMapUnmanaged(u64, []const u8) = .{};
    var node_buf: [2]std.zig.Ast.Node.Index = undefined;
    const namespace = ast.fullContainerDecl(&node_buf, node).?;
    const node_tags = ast.nodes.items(.tag);
    //const node_datas = ast.nodes.items(.data);
    const main_tokens = ast.nodes.items(.main_token);
    var any_bad = false;
    for (namespace.ast.members) |member_node| {
        switch (node_tags[member_node]) {
            .global_var_decl, .local_var_decl, .simple_var_decl, .aligned_var_decl => {
                const full = ast.fullVarDecl(member_node).?;
                const name_token = full.ast.mut_token + 1;
                const ident_name_raw = ast.tokenSlice(name_token);
                //std.debug.print("found '{s}'\n", .{ident_name_raw});
                assert(full.ast.init_node != 0);
                const number_token = main_tokens[full.ast.init_node];
                const bytes = ast.tokenSlice(number_token);
                const n = switch (std.zig.parseNumberLiteral(bytes)) {
                    .int => |n| n,
                    else => {
                        fatal("{s}: bad number literal", .{arch_name});
                    },
                };
                try map.put(arena, ident_name_raw, n);
                const gop = try num2name.getOrPut(arena, n);
                if (gop.found_existing) {
                    std.debug.print("{s}: duplicate: '{s}' and '{s}' both map to {d}\n", .{
                        arch_name, gop.value_ptr.*, ident_name_raw, n,
                    });
                    any_bad = true;
                }
                gop.value_ptr.* = ident_name_raw;
                //std.debug.print("{s}: found '{s}'=>{d}\n", .{ arch_name, ident_name_raw, n });
            },
            else => fatal("{s}: found non var decl", .{arch_name}),
        }
    }

    map.sortUnstable((struct {
        values: []const u64,
        pub fn lessThan(ctx: @This(), a_index: usize, b_index: usize) bool {
            return ctx.values[a_index] < ctx.values[b_index];
        }
    }){
        .values = map.values(),
    });

    for (map.keys(), map.values()) |k, v| {
        if (@clz(v) + @ctz(v) != 63) {
            std.debug.print("not a flag: {s} = {d}\n", .{ k, v });
            any_bad = true;
        }
    }
    if (any_bad) std.process.exit(1);

    var buf: std.ArrayListUnmanaged(u8) = .{};
    const w = buf.writer(arena);

    const nbits = 32;
    try w.print("packed struct (u{d}) {{\n", .{nbits});
    var bit_offset: usize = 0;
    for (map.keys(), map.values()) |k, v| {
        // emit padding until we get to this bit offset
        const next_off = @ctz(v);
        if (next_off > bit_offset) {
            try w.print("    _: u{d},\n", .{next_off - bit_offset});
        }
        try w.print("    {s}: bool,\n", .{k});
        bit_offset = next_off + 1;
    }
    if (nbits > bit_offset) {
        try w.print("    _: u{d},\n", .{nbits - bit_offset});
    }
    try w.writeAll("}");

    const result = try buf.toOwnedSlice(arena);
    const gop = try arch_map.getOrPut(arena, result);
    if (gop.found_existing) {
        gop.value_ptr.* = try std.fmt.allocPrint(arena, "{s}, .{s}", .{
            gop.value_ptr.*, arch_name,
        });
    } else {
        gop.value_ptr.* = try std.fmt.allocPrint(arena, ".{s}", .{arch_name});
    }
}

fn fatal(comptime format: []const u8, args: anytype) noreturn {
    std.log.err(format, args);
    std.process.exit(1);
}
