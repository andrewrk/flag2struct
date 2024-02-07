pub const x86_64 = struct {
    /// only give out 32bit addresses
    pub const @"32BIT" = 0x40;
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x2000;
    /// don't check for reservations
    pub const NORESERVE = 0x4000;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const x86 = struct {
    pub const NORESERVE = 0x4000;
    pub const GROWSDOWN = 0x0100;
    pub const DENYWRITE = 0x0800;
    pub const EXECUTABLE = 0x1000;
    pub const LOCKED = 0x2000;
    pub const @"32BIT" = 0x40;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const aarch64 = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x2000;
    /// don't check for reservations
    pub const NORESERVE = 0x4000;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const aarch64_be = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x2000;
    /// don't check for reservations
    pub const NORESERVE = 0x4000;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const arm = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x2000;
    /// don't check for reservations
    pub const NORESERVE = 0x4000;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const thumb = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x2000;
    /// don't check for reservations
    pub const NORESERVE = 0x4000;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const riscv64 = struct {

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const sparc64 = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0200;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x0100;
    /// don't check for reservations
    pub const NORESERVE = 0x0040;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const mips = struct {
    pub const NORESERVE = 0x0400;
    pub const GROWSDOWN = 0x1000;
    pub const DENYWRITE = 0x2000;
    pub const EXECUTABLE = 0x4000;
    pub const LOCKED = 0x8000;
    pub const @"32BIT" = 0x40;

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file
    pub const ANONYMOUS = 0x800;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables
    pub const POPULATE = 0x10000;
    /// do not block on IO
    pub const NONBLOCK = 0x20000;
    /// give out an address that is best suited for process/thread stacks
    pub const STACK = 0x40000;
    /// create a huge page mapping
    pub const HUGETLB = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const mipsel = struct {
    pub const NORESERVE = 0x0400;
    pub const GROWSDOWN = 0x1000;
    pub const DENYWRITE = 0x2000;
    pub const EXECUTABLE = 0x4000;
    pub const LOCKED = 0x8000;
    pub const @"32BIT" = 0x40;

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file
    pub const ANONYMOUS = 0x800;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables
    pub const POPULATE = 0x10000;
    /// do not block on IO
    pub const NONBLOCK = 0x20000;
    /// give out an address that is best suited for process/thread stacks
    pub const STACK = 0x40000;
    /// create a huge page mapping
    pub const HUGETLB = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const mips64 = struct {
    pub const NORESERVE = 0x0400;
    pub const GROWSDOWN = 0x1000;
    pub const DENYWRITE = 0x2000;
    pub const EXECUTABLE = 0x4000;
    pub const LOCKED = 0x8000;
    pub const @"32BIT" = 0x40;

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file
    pub const ANONYMOUS = 0x800;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables
    pub const POPULATE = 0x10000;
    /// do not block on IO
    pub const NONBLOCK = 0x20000;
    /// give out an address that is best suited for process/thread stacks
    pub const STACK = 0x40000;
    /// create a huge page mapping
    pub const HUGETLB = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const mips64el = struct {
    pub const NORESERVE = 0x0400;
    pub const GROWSDOWN = 0x1000;
    pub const DENYWRITE = 0x2000;
    pub const EXECUTABLE = 0x4000;
    pub const LOCKED = 0x8000;
    pub const @"32BIT" = 0x40;

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file
    pub const ANONYMOUS = 0x800;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables
    pub const POPULATE = 0x10000;
    /// do not block on IO
    pub const NONBLOCK = 0x20000;
    /// give out an address that is best suited for process/thread stacks
    pub const STACK = 0x40000;
    /// create a huge page mapping
    pub const HUGETLB = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const powerpc = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x0080;
    /// don't check for reservations
    pub const NORESERVE = 0x0040;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const powerpcle = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x0080;
    /// don't check for reservations
    pub const NORESERVE = 0x0040;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const powerpc64 = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x0080;
    /// don't check for reservations
    pub const NORESERVE = 0x0040;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const powerpc64le = struct {
    /// stack-like segment
    pub const GROWSDOWN = 0x0100;
    /// ETXTBSY
    pub const DENYWRITE = 0x0800;
    /// mark it as an executable
    pub const EXECUTABLE = 0x1000;
    /// pages are locked
    pub const LOCKED = 0x0080;
    /// don't check for reservations
    pub const NORESERVE = 0x0040;

    // common to all architectures except mips

    /// Interpret addr exactly
    pub const FIXED = 0x10;
    /// don't use a file (NON MIPS)
    pub const ANONYMOUS = 0x20;
    // MAP_ 0x0100 - 0x4000 flags are per architecture
    /// populate (prefault) pagetables (NON MIPS)
    pub const POPULATE = 0x8000;
    /// do not block on IO (NON MIPS)
    pub const NONBLOCK = 0x10000;
    /// give out an address that is best suited for process/thread stacks (NON MIPS)
    pub const STACK = 0x20000;
    /// create a huge page mapping (NON MIPS)
    pub const HUGETLB = 0x40000;
    /// perform synchronous page faults for the mapping
    pub const SYNC = 0x80000;
    /// MAP_FIXED which doesn't unmap underlying mapping
    pub const FIXED_NOREPLACE = 0x100000;
    /// For anonymous mmap, memory could be uninitialized
    pub const UNINITIALIZED = 0x4000000;
};

pub const emscripten = struct {
    pub const FIXED = 0x10;
    pub const ANONYMOUS = 0x20;
    pub const NORESERVE = 0x4000;
    pub const GROWSDOWN = 0x0100;
    pub const DENYWRITE = 0x0800;
    pub const EXECUTABLE = 0x1000;
    pub const LOCKED = 0x2000;
    pub const POPULATE = 0x8000;
    pub const NONBLOCK = 0x10000;
    pub const STACK = 0x20000;
    pub const HUGETLB = 0x40000;
    pub const SYNC = 0x80000;
    pub const FIXED_NOREPLACE = 0x100000;
};

pub const solaris = struct {
    //pub const FILE = 0x0000;
    //pub const SHARED = 0x0001;
    //pub const PRIVATE = 0x0002;
    //pub const TYPE = 0x000f;

    pub const FIXED = 0x0010;
    // Unimplemented
    pub const RENAME = 0x0020;
    pub const NORESERVE = 0x0040;
    /// Force mapping in lower 4G address space
    pub const @"32BIT" = 0x0080;

    pub const ANONYMOUS = 0x0100;
    pub const ALIGN = 0x0200;
    pub const TEXT = 0x0400;
    pub const INITDATA = 0x0800;
};

pub const netbsd = struct {
    //pub const FILE = 0x0000;
    //pub const SHARED = 0x0001;
    //pub const PRIVATE = 0x0002;
    pub const REMAPDUP = 0x0004;
    pub const FIXED = 0x0010;
    pub const RENAME = 0x0020;
    pub const NORESERVE = 0x0040;
    pub const INHERIT = 0x0080;
    pub const HASSEMAPHORE = 0x0200;
    pub const TRYFIXED = 0x0400;
    pub const WIRED = 0x0800;

    pub const ANONYMOUS = 0x1000;
    pub const STACK = 0x2000;
};

pub const openbsd = struct {
    //pub const FILE = 0;
    //pub const SHARED = 0x0001;
    //pub const PRIVATE = 0x0002;
    pub const FIXED = 0x0010;

    pub const ANONYMOUS = 0x1000;
    pub const STACK = 0x4000;
    pub const CONCEAL = 0x8000;
};

pub const haiku = struct {
    //pub const SHARED = 0x01;
    //pub const PRIVATE = 0x02;

    /// require mapping to specified addr
    pub const FIXED = 0x04;
    /// no underlying object
    pub const ANONYMOUS = 0x0008;
    /// don't commit memory
    pub const NORESERVE = 0x10;
};

pub const darwin = struct {
    ///// map from file (default)
    //pub const FILE = 0x0000;
    ///// changes are private
    //pub const PRIVATE = 0x0002;
    ///// share changes
    //pub const SHARED = 0x0001;

    /// allocated from memory, swap space
    pub const ANONYMOUS = 0x1000;
    /// interpret addr exactly
    pub const FIXED = 0x0010;
    /// region may contain semaphores
    pub const HASSEMAPHORE = 0x0200;
    /// don't cache pages for this mapping
    pub const NOCACHE = 0x0400;
    /// don't reserve needed swap area
    pub const NORESERVE = 0x0040;
};

pub const dragonfly = struct {
    //pub const FILE = 0;
    //pub const SHARED = 1;
    //pub const PRIVATE = 2;

    pub const FIXED = 16;
    pub const RENAME = 32;
    pub const NORESERVE = 64;
    pub const INHERIT = 128;
    pub const NOEXTEND = 256;
    pub const HASSEMAPHORE = 512;
    pub const STACK = 1024;
    pub const NOSYNC = 2048;
    pub const ANONYMOUS = 4096;
    pub const VPAGETABLE = 8192;
    pub const TRYFIXED = 65536;
    pub const NOCORE = 131072;
    pub const SIZEALIGN = 262144;
};

pub const freebsd = struct {
    //pub const FILE = 0;
    //pub const SHARED = 0x0001;
    //pub const PRIVATE = 0x0002;
    pub const FIXED = 0x0010;
    pub const STACK = 0x0400;
    pub const NOSYNC = 0x0800;
    pub const ANONYMOUS = 0x1000;

    pub const GUARD = 0x00002000;
    pub const EXCL = 0x00004000;
    pub const NOCORE = 0x00020000;
    pub const PREFAULT_READ = 0x00040000;
    pub const @"32BIT" = 0x00080000;
};
