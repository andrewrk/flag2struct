const linux = struct {
    pub const LAZY = 1;
    pub const NOW = 2;
    pub const NOLOAD = 4;
    pub const NODELETE = 4096;
    pub const GLOBAL = 256;
    //pub const LOCAL = 0;
};
pub const emscripten = struct {
    pub const LAZY = 1;
    pub const NOW = 2;
    pub const NOLOAD = 4;
    pub const NODELETE = 4096;
    pub const GLOBAL = 256;
    //pub const LOCAL = 0;
};
pub const dragonfly = struct {
    pub const LAZY = 1;
    pub const NOW = 2;
    //pub const MODEMASK = 0x3;
    pub const GLOBAL = 0x100;
    //pub const LOCAL = 0;
    pub const TRACE = 0x200;
    pub const NODELETE = 0x01000;
    pub const NOLOAD = 0x02000;

    //pub const NEXT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))));
    //pub const DEFAULT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -2)))));
    //pub const SELF = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -3)))));
    //pub const ALL = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -4)))));
};
pub const haiku = struct {
    ///// relocations are performed as needed
    //pub const LAZY = 0;
    /// the file gets relocated at load time
    pub const NOW = 1;
    /// all symbols are available
    pub const GLOBAL = 2;
    ///// symbols are not available for relocating any other object
    //pub const LOCAL = 0;
};
pub const netbsd = struct {
    pub const LAZY = 1;
    pub const NOW = 2;
    pub const GLOBAL = 0x100;
    pub const LOCAL = 0x200;
    pub const NODELETE = 0x01000;
    pub const NOLOAD = 0x02000;

    //pub const NEXT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))));
    //pub const DEFAULT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -2)))));
    //pub const SELF = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -3)))));
};
pub const freebsd = struct {
    /// Bind function calls lazily.
    pub const LAZY = 1;
    /// Bind function calls immediately.
    pub const NOW = 2;
    //pub const MODEMASK = 0x3;
    /// Make symbols globally available.
    pub const GLOBAL = 0x100;
    ///// Opposite of GLOBAL, and the default.
    //pub const LOCAL = 0;
    /// Trace loaded objects and exit.
    pub const TRACE = 0x200;
    /// Do not remove members.
    pub const NODELETE = 0x01000;
    /// Do not load if not already loaded.
    pub const NOLOAD = 0x02000;
};
pub const solaris = struct {
    pub const LAZY = 0x00001;
    pub const NOW = 0x00002;
    pub const NOLOAD = 0x00004;
    pub const GLOBAL = 0x00100;
    //pub const LOCAL = 0x00000;
    pub const PARENT = 0x00200;
    pub const GROUP = 0x00400;
    pub const WORLD = 0x00800;
    pub const NODELETE = 0x01000;
    pub const FIRST = 0x02000;
    pub const CONFGEN = 0x10000;

    //pub const NEXT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))));
    //pub const DEFAULT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -2)))));
    //pub const SELF = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -3)))));
    //pub const PROBE = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -4)))));
};
pub const openbsd = struct {
    /// Bind function calls lazily.
    pub const LAZY = 1;
    /// Bind function calls immediately.
    pub const NOW = 2;
    /// Make symbols globally available.
    pub const GLOBAL = 0x100;
    ///// Opposite of GLOBAL, and the default.
    //pub const LOCAL = 0x000;
    /// Trace loaded objects and exit.
    pub const TRACE = 0x200;
};
pub const darwin = struct {
    pub const LAZY = 0x1;
    pub const NOW = 0x2;
    pub const LOCAL = 0x4;
    pub const GLOBAL = 0x8;
    pub const NOLOAD = 0x10;
    pub const NODELETE = 0x80;
    pub const FIRST = 0x100;

    //pub const NEXT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -1)))));
    //pub const DEFAULT = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -2)))));
    //pub const SELF = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -3)))));
    //pub const MAIN_ONLY = @as(*anyopaque, @ptrFromInt(@as(usize, @bitCast(@as(isize, -5)))));
};
