pub const x86_64 = struct {
    //pub const RDONLY = 0o0;
    //pub const WRONLY = 0o1;
    //pub const RDWR = 0o2;

    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const NOFOLLOW = 0o400000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o40000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
    pub const DIRECTORY = 0o200000;
};

pub const x86 = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o200000;
    pub const NOFOLLOW = 0o400000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o40000;
    pub const LARGEFILE = 0o100000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};

pub const aarch64 = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o200000;
    pub const LARGEFILE = 0o400000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const aarch64_be = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o200000;
    pub const LARGEFILE = 0o400000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const arm = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o200000;
    pub const LARGEFILE = 0o400000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const thumb = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o200000;
    pub const LARGEFILE = 0o400000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const riscv64 = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o200000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o400000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o40000;
    pub const LARGEFILE = 0o100000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const sparc64 = struct {
    pub const CREAT = 0x200;
    pub const EXCL = 0x800;
    pub const NOCTTY = 0x8000;
    pub const TRUNC = 0x400;
    pub const APPEND = 0x8;
    pub const NONBLOCK = 0x4000;
    pub const SYNC = 0x800000;
    pub const DSYNC = 0x2000;
    //pub const RSYNC = SYNC;
    pub const DIRECTORY = 0x10000;
    pub const NOFOLLOW = 0x20000;
    pub const CLOEXEC = 0x400000;

    pub const ASYNC = 0x40;
    pub const DIRECT = 0x100000;
    //pub const LARGEFILE = 0;
    pub const NOATIME = 0x200000;
    pub const PATH = 0x1000000;
    pub const TMPFILE = 0x2000000;
};

pub const mips = struct {
    pub const CREAT = 0o0400;
    pub const EXCL = 0o02000;
    pub const NOCTTY = 0o04000;
    pub const TRUNC = 0o01000;
    pub const APPEND = 0o0010;
    pub const NONBLOCK = 0o0200;
    pub const DSYNC = 0o0020;
    pub const SYNC = 0o040000;
    //pub const RSYNC = 0o040020;
    pub const DIRECTORY = 0o0200000;
    pub const NOFOLLOW = 0o0400000;
    pub const CLOEXEC = 0o02000000;

    pub const ASYNC = 0o010000;
    pub const DIRECT = 0o0100000;
    pub const LARGEFILE = 0o020000;
    pub const NOATIME = 0o01000000;
    pub const PATH = 0o010000000;
    pub const TMPFILE = 0o020000000;
};

pub const mipsel = struct {
    pub const CREAT = 0o0400;
    pub const EXCL = 0o02000;
    pub const NOCTTY = 0o04000;
    pub const TRUNC = 0o01000;
    pub const APPEND = 0o0010;
    pub const NONBLOCK = 0o0200;
    pub const DSYNC = 0o0020;
    pub const SYNC = 0o040000;
    //pub const RSYNC = 0o040020;
    pub const DIRECTORY = 0o0200000;
    pub const NOFOLLOW = 0o0400000;
    pub const CLOEXEC = 0o02000000;

    pub const ASYNC = 0o010000;
    pub const DIRECT = 0o0100000;
    pub const LARGEFILE = 0o020000;
    pub const NOATIME = 0o01000000;
    pub const PATH = 0o010000000;
    pub const TMPFILE = 0o020000000;
};

pub const mips64 = struct {
    pub const CREAT = 0o0400;
    pub const EXCL = 0o02000;
    pub const NOCTTY = 0o04000;
    pub const TRUNC = 0o01000;
    pub const APPEND = 0o0010;
    pub const NONBLOCK = 0o0200;
    pub const DSYNC = 0o0020;
    pub const SYNC = 0o040000;
    //pub const RSYNC = 0o040020;
    pub const DIRECTORY = 0o0200000;
    pub const NOFOLLOW = 0o0400000;
    pub const CLOEXEC = 0o02000000;

    pub const ASYNC = 0o010000;
    pub const DIRECT = 0o0100000;
    pub const LARGEFILE = 0o020000;
    pub const NOATIME = 0o01000000;
    pub const PATH = 0o010000000;
    pub const TMPFILE = 0o020000000;
};

pub const mips64el = struct {
    pub const CREAT = 0o0400;
    pub const EXCL = 0o02000;
    pub const NOCTTY = 0o04000;
    pub const TRUNC = 0o01000;
    pub const APPEND = 0o0010;
    pub const NONBLOCK = 0o0200;
    pub const DSYNC = 0o0020;
    pub const SYNC = 0o040000;
    //pub const RSYNC = 0o040020;
    pub const DIRECTORY = 0o0200000;
    pub const NOFOLLOW = 0o0400000;
    pub const CLOEXEC = 0o02000000;

    pub const ASYNC = 0o010000;
    pub const DIRECT = 0o0100000;
    pub const LARGEFILE = 0o020000;
    pub const NOATIME = 0o01000000;
    pub const PATH = 0o010000000;
    pub const TMPFILE = 0o020000000;
};

pub const powerpc = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o400000;
    pub const LARGEFILE = 0o200000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};

pub const powerpcle = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o400000;
    pub const LARGEFILE = 0o200000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};

pub const powerpc64 = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o400000;
    pub const LARGEFILE = 0o200000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const powerpc64le = struct {
    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o40000;
    pub const TMPFILE = 0o20000000;
    pub const NOFOLLOW = 0o100000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o400000;
    pub const LARGEFILE = 0o200000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
};

pub const emscripten = struct {
    //pub const RDONLY = 0o0;
    //pub const WRONLY = 0o1;
    //pub const RDWR = 0o2;

    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o200000;
    pub const NOFOLLOW = 0o400000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o40000;
    pub const LARGEFILE = 0o100000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};

pub const wasi = struct {
    pub const read = 0x4000000;
    pub const write = 0x10000000;

    pub const APPEND = 0x1;
    pub const CREAT = 0x1000;
    pub const DIRECTORY = 0x2000;
    pub const DSYNC = 0x2;
    pub const EXCL = 0x4000;
    pub const EXEC = 0x2000000;
    pub const NOFOLLOW = 0x1000000;
    pub const NONBLOCK = 0x4;
    pub const RSYNC = 0x8;
    pub const SEARCH = 0x8000000;
    pub const SYNC = 0x10;
    pub const TRUNC = 0x8000;
};

pub const plan9 = struct {
    //pub const READ = 0; // open for read
    //pub const RDONLY = 0;
    //pub const WRITE = 1; // write
    //pub const WRONLY = 1;
    //pub const RDWR = 2; // read and write
    //pub const EXEC = 3; // execute, == read but check execute permission
    pub const TRUNC = 16; // or'ed in (except for exec), truncate file first
    pub const CEXEC = 32; // or'ed in (per file descriptor), close on exec
    pub const RCLOSE = 64; // or'ed in, remove on close
    pub const EXCL = 0x1000; // or'ed in, exclusive create
};

pub const solaris = struct {
    //pub const RDONLY = 0;
    //pub const WRONLY = 1;
    //pub const RDWR = 2;
    pub const SEARCH = 0x200000;
    pub const EXEC = 0x400000;
    pub const NDELAY = 0x04;
    pub const APPEND = 0x08;
    pub const SYNC = 0x10;
    pub const DSYNC = 0x40;
    pub const RSYNC = 0x8000;
    pub const NONBLOCK = 0x80;
    pub const LARGEFILE = 0x2000;

    pub const CREAT = 0x100;
    pub const TRUNC = 0x200;
    pub const EXCL = 0x400;
    pub const NOCTTY = 0x800;
    pub const XATTR = 0x4000;
    pub const NOFOLLOW = 0x20000;
    pub const NOLINKS = 0x40000;
    pub const CLOEXEC = 0x800000;
    pub const DIRECTORY = 0x1000000;
    pub const DIRECT = 0x2000000;
};

pub const netbsd = struct {
    ///// open for reading only
    //pub const RDONLY = 0x00000000;
    ///// open for writing only
    //pub const WRONLY = 0x00000001;
    ///// open for reading and writing
    //pub const RDWR = 0x00000002;
    ///// mask for above modes
    //pub const ACCMODE = 0x00000003;
    /// no delay
    pub const NONBLOCK = 0x00000004;
    /// set append mode
    pub const APPEND = 0x00000008;
    /// open with shared file lock
    pub const SHLOCK = 0x00000010;
    /// open with exclusive file lock
    pub const EXLOCK = 0x00000020;
    /// signal pgrp when data ready
    pub const ASYNC = 0x00000040;
    /// synchronous writes
    pub const SYNC = 0x00000080;
    /// don't follow symlinks on the last
    pub const NOFOLLOW = 0x00000100;
    /// create if nonexistent
    pub const CREAT = 0x00000200;
    /// truncate to zero length
    pub const TRUNC = 0x00000400;
    /// error if already exists
    pub const EXCL = 0x00000800;
    /// don't assign controlling terminal
    pub const NOCTTY = 0x00008000;
    /// write: I/O data completion
    pub const DSYNC = 0x00010000;
    /// read: I/O completion as for write
    pub const RSYNC = 0x00020000;
    /// use alternate i/o semantics
    pub const ALT_IO = 0x00040000;
    /// direct I/O hint
    pub const DIRECT = 0x00080000;
    /// fail if not a directory
    pub const DIRECTORY = 0x00200000;
    /// set close on exec
    pub const CLOEXEC = 0x00400000;
    /// skip search permission checks
    pub const SEARCH = 0x00800000;
};

pub const openbsd = struct {
    ///// open for reading only
    //pub const RDONLY = 0x00000000;
    ///// open for writing only
    //pub const WRONLY = 0x00000001;
    ///// open for reading and writing
    //pub const RDWR = 0x00000002;
    ///// mask for above modes
    //pub const ACCMODE = 0x00000003;
    /// no delay
    pub const NONBLOCK = 0x00000004;
    /// set append mode
    pub const APPEND = 0x00000008;
    /// open with shared file lock
    pub const SHLOCK = 0x00000010;
    /// open with exclusive file lock
    pub const EXLOCK = 0x00000020;
    /// signal pgrp when data ready
    pub const ASYNC = 0x00000040;
    /// synchronous writes
    pub const SYNC = 0x00000080;
    /// don't follow symlinks on the last
    pub const NOFOLLOW = 0x00000100;
    /// create if nonexistent
    pub const CREAT = 0x00000200;
    /// truncate to zero length
    pub const TRUNC = 0x00000400;
    /// error if already exists
    pub const EXCL = 0x00000800;
    /// don't assign controlling terminal
    pub const NOCTTY = 0x00008000;
    ///// write: I/O data completion
    //pub const DSYNC = SYNC;
    ///// read: I/O completion as for write
    //pub const RSYNC = SYNC;
    /// fail if not a directory
    pub const DIRECTORY = 0x20000;
    /// set close on exec
    pub const CLOEXEC = 0x10000;
};

pub const windows = struct {
    //pub const RDONLY = 0o0;
    //pub const WRONLY = 0o1;
    //pub const RDWR = 0o2;

    pub const CREAT = 0o100;
    pub const EXCL = 0o200;
    pub const NOCTTY = 0o400;
    pub const TRUNC = 0o1000;
    pub const APPEND = 0o2000;
    pub const NONBLOCK = 0o4000;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0o4000000;
    //pub const RSYNC = 0o4010000;
    pub const DIRECTORY = 0o200000;
    pub const NOFOLLOW = 0o400000;
    pub const CLOEXEC = 0o2000000;

    pub const ASYNC = 0o20000;
    pub const DIRECT = 0o40000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};

pub const haiku = struct {
    //pub const RDONLY = 0x0000;
    //pub const WRONLY = 0x0001;
    //pub const RDWR = 0x0002;
    //pub const ACCMODE = 0x0003;
    //pub const RWMASK = ACCMODE;

    pub const EXCL = 0x0100;
    pub const CREAT = 0x0200;
    pub const TRUNC = 0x0400;
    pub const NOCTTY = 0x1000;
    pub const NOTRAVERSE = 0x2000;

    pub const CLOEXEC = 0x00000040;
    pub const NONBLOCK = 0x00000080;
    pub const APPEND = 0x00000800;
    pub const SYNC = 0x00010000;
    pub const RSYNC = 0x00020000;
    pub const DSYNC = 0x00040000;
    pub const NOFOLLOW = 0x00080000;
    pub const DIRECT = 0x00100000;
    pub const DIRECTORY = 0x00200000;
};

pub const darwin = struct {
    //pub const PATH = 0x0000;
    ///// open for reading only
    //pub const RDONLY = 0x0000;
    ///// open for writing only
    //pub const WRONLY = 0x0001;
    ///// open for reading and writing
    //pub const RDWR = 0x0002;
    /// do not block on open or for data to become available
    pub const NONBLOCK = 0x0004;
    /// append on each write
    pub const APPEND = 0x0008;
    /// create file if it does not exist
    pub const CREAT = 0x0200;
    /// truncate size to 0
    pub const TRUNC = 0x0400;
    /// error if CREAT and the file exists
    pub const EXCL = 0x0800;
    /// atomically obtain a shared lock
    pub const SHLOCK = 0x0010;
    /// atomically obtain an exclusive lock
    pub const EXLOCK = 0x0020;
    /// do not follow symlinks
    pub const NOFOLLOW = 0x0100;
    /// allow open of symlinks
    pub const SYMLINK = 0x200000;
    /// descriptor requested for event notifications only
    pub const EVTONLY = 0x8000;
    /// mark as close-on-exec
    pub const CLOEXEC = 0x1000000;
    pub const ALERT = 536870912;
    pub const ASYNC = 64;
    pub const DIRECTORY = 1048576;
    pub const DSYNC = 4194304;
    pub const NOCTTY = 131072;
    pub const POPUP = 2147483648;
    pub const SYNC = 128;
};

pub const dragonfly = struct {
    //pub const RDONLY = 0;
    //pub const NDELAY = NONBLOCK;
    //pub const WRONLY = 1;
    //pub const RDWR = 2;
    //pub const ACCMODE = 3;
    pub const NONBLOCK = 4;
    pub const APPEND = 8;
    pub const SHLOCK = 16;
    pub const EXLOCK = 32;
    pub const ASYNC = 64;
    pub const SYNC = 128;
    pub const NOFOLLOW = 256;
    pub const CREAT = 512;
    pub const TRUNC = 1024;
    pub const EXCL = 2048;
    pub const NOCTTY = 32768;
    pub const DIRECT = 65536;
    pub const CLOEXEC = 131072;
    pub const FBLOCKING = 262144;
    pub const FNONBLOCKING = 524288;
    pub const FAPPEND = 1048576;
    pub const FOFFSET = 2097152;
    pub const FSYNCWRITE = 4194304;
    pub const FASYNCWRITE = 8388608;
    pub const DIRECTORY = 134217728;
};

pub const freebsd = struct {
    //pub const RDONLY = 0x0000;
    //pub const WRONLY = 0x0001;
    //pub const RDWR = 0x0002;
    //pub const ACCMODE = 0x0003;

    pub const SHLOCK = 0x0010;
    pub const EXLOCK = 0x0020;

    pub const CREAT = 0x0200;
    pub const EXCL = 0x0800;
    pub const NOCTTY = 0x8000;
    pub const TRUNC = 0x0400;
    pub const APPEND = 0x0008;
    pub const NONBLOCK = 0x0004;
    pub const DSYNC = 0o10000;
    pub const SYNC = 0x0080;
    pub const DIRECTORY = 0x20000;
    pub const NOFOLLOW = 0x0100;
    pub const CLOEXEC = 0x00100000;

    pub const ASYNC = 0x0040;
    pub const DIRECT = 0x00010000;
    pub const NOATIME = 0o1000000;
    pub const PATH = 0o10000000;
    pub const TMPFILE = 0o20000000;
};
