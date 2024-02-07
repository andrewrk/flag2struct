# flag2struct

input some zig code that looks like this:

```zig
pub const @"32BIT" = 0x40;
pub const GROWSDOWN = 0x0100;
pub const DENYWRITE = 0x0800;
pub const EXECUTABLE = 0x1000;
pub const LOCKED = 0x2000;
pub const NORESERVE = 0x4000;

// common to all architectures except mips

pub const FIXED = 0x10;
pub const ANONYMOUS = 0x20;
pub const POPULATE = 0x8000;
pub const NONBLOCK = 0x10000;
pub const STACK = 0x20000;
pub const HUGETLB = 0x40000;
pub const SYNC = 0x80000;
pub const FIXED_NOREPLACE = 0x100000;
pub const UNINITIALIZED = 0x4000000;
```

output this:

```zig
packed struct (u32) {
    _: u4,
    FIXED: u1,
    ANONYMOUS: u1,
    @"32BIT": u1,
    _: u1,
    GROWSDOWN: u1,
    _: u2,
    DENYWRITE: u1,
    EXECUTABLE: u1,
    LOCKED: u1,
    NORESERVE: u1,
    POPULATE: u1,
    NONBLOCK: u1,
    STACK: u1,
    HUGETLB: u1,
    SYNC: u1,
    FIXED_NOREPLACE: u1,
    _: u5,
    UNINITIALIZED: u1,
    _: u5,
}
```
