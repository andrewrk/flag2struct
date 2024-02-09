pub const x86_64 = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const x86 = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const aarch64 = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const aarch64_be = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const arm = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const thumb = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const riscv64 = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const sparc64 = struct {
    pub const NONBLOCK = 0x4000;
    pub const CLOEXEC = 0x400000;
};

pub const mips = struct {
    pub const NONBLOCK = 0o0200;
    pub const CLOEXEC = 0o02000000;
};

pub const mipsel = struct {
    pub const NONBLOCK = 0o0200;
    pub const CLOEXEC = 0o02000000;
};

pub const mips64 = struct {
    pub const NONBLOCK = 0o0200;
    pub const CLOEXEC = 0o02000000;
};

pub const mips64el = struct {
    pub const NONBLOCK = 0o0200;
    pub const CLOEXEC = 0o02000000;
};

pub const powerpc = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const powerpcle = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const powerpc64 = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};

pub const powerpc64le = struct {
    pub const NONBLOCK = 0o4000;
    pub const CLOEXEC = 0o2000000;
};
