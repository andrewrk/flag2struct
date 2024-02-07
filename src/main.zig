const std = @import("std");
const assert = std.debug.assert;

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

    var map: std.StringArrayHashMapUnmanaged(u64) = .{};

    const root = ast.containerDeclRoot();
    const node_tags = ast.nodes.items(.tag);
    //const node_datas = ast.nodes.items(.data);
    const main_tokens = ast.nodes.items(.main_token);
    for (root.ast.members) |member_node| {
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
                        fatal("bad number literal", .{});
                    },
                };
                try map.put(arena, ident_name_raw, n);
                std.debug.print("found '{s}'=>{d}\n", .{ ident_name_raw, n });
            },
            else => fatal("found non var decl", .{}),
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

    var any_bad = false;
    for (map.keys(), map.values()) |k, v| {
        if (@clz(v) + @ctz(v) != 63) {
            std.debug.print("not a flag: {s} = {d}\n", .{ k, v });
            any_bad = true;
        }
    }
    if (any_bad) std.process.exit(1);

    var bw = std.io.bufferedWriter(std.io.getStdOut().writer());
    const w = bw.writer();

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
    try w.writeAll("}\n");

    try bw.flush();
}

fn fatal(comptime format: []const u8, args: anytype) noreturn {
    std.log.err(format, args);
    std.process.exit(1);
}