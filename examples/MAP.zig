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
