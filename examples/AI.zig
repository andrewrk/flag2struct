pub const linux = struct {
    pub const PASSIVE = 0x01;
    pub const CANONNAME = 0x02;
    pub const NUMERICHOST = 0x04;
    pub const V4MAPPED = 0x08;
    pub const ALL = 0x10;
    pub const ADDRCONFIG = 0x20;
    pub const NUMERICSERV = 0x400;
};
pub const emscripten = struct {
    pub const PASSIVE = 0x01;
    pub const CANONNAME = 0x02;
    pub const NUMERICHOST = 0x04;
    pub const V4MAPPED = 0x08;
    pub const ALL = 0x10;
    pub const ADDRCONFIG = 0x20;
    pub const NUMERICSERV = 0x400;
};
pub const dragonfly = struct {
    pub const PASSIVE = 0x00000001;
    pub const CANONNAME = 0x00000002;
    pub const NUMERICHOST = 0x00000004;
    pub const NUMERICSERV = 0x00000008;
    //pub const MASK = PASSIVE | CANONNAME | NUMERICHOST | NUMERICSERV | ADDRCONFIG;
    pub const ALL = 0x00000100;
    pub const V4MAPPED_CFG = 0x00000200;
    pub const ADDRCONFIG = 0x00000400;
    pub const V4MAPPED = 0x00000800;
    //pub const DEFAULT = V4MAPPED_CFG | ADDRCONFIG;
};
pub const haiku = struct {
    pub const PASSIVE = 0x00000001;
    pub const CANONNAME = 0x00000002;
    pub const NUMERICHOST = 0x00000004;
    pub const NUMERICSERV = 0x00000008;
    pub const ALL = 0x00000100;
    pub const V4MAPPED_CFG = 0x00000200;
    pub const ADDRCONFIG = 0x00000400;
    pub const V4MAPPED = 0x00000800;
};
pub const netbsd = struct {
    /// get address to use bind()
    pub const PASSIVE = 0x00000001;
    /// fill ai_canonname
    pub const CANONNAME = 0x00000002;
    /// prevent host name resolution
    pub const NUMERICHOST = 0x00000004;
    /// prevent service name resolution
    pub const NUMERICSERV = 0x00000008;
    /// only if any address is assigned
    pub const ADDRCONFIG = 0x00000400;
};
pub const freebsd = struct {
    /// get address to use bind()
    pub const PASSIVE = 0x00000001;
    /// fill ai_canonname
    pub const CANONNAME = 0x00000002;
    /// prevent host name resolution
    pub const NUMERICHOST = 0x00000004;
    /// prevent service name resolution
    pub const NUMERICSERV = 0x00000008;
    ///// valid flags for addrinfo (not a standard def, apps should not use it)
    //pub const MASK = (PASSIVE | CANONNAME | NUMERICHOST | NUMERICSERV | ADDRCONFIG | ALL | V4MAPPED);
    /// IPv6 and IPv4-mapped (with V4MAPPED)
    pub const ALL = 0x00000100;
    /// accept IPv4-mapped if kernel supports
    pub const V4MAPPED_CFG = 0x00000200;
    /// only if any address is assigned
    pub const ADDRCONFIG = 0x00000400;
    /// accept IPv4-mapped IPv6 address
    pub const V4MAPPED = 0x00000800;
    ///// special recommended flags for getipnodebyname
    //pub const DEFAULT = (V4MAPPED_CFG | ADDRCONFIG);
};
pub const solaris = struct {
    /// IPv4-mapped IPv6 address
    pub const V4MAPPED = 0x0001;
    pub const ALL = 0x0002;
    /// only if any address is assigned
    pub const ADDRCONFIG = 0x0004;
    /// get address to use bind()
    pub const PASSIVE = 0x0008;
    /// fill ai_canonname
    pub const CANONNAME = 0x0010;
    /// prevent host name resolution
    pub const NUMERICHOST = 0x0020;
    /// prevent service name resolution
    pub const NUMERICSERV = 0x0040;
};
pub const openbsd = struct {
    /// get address to use bind()
    pub const PASSIVE = 1;
    /// fill ai_canonname
    pub const CANONNAME = 2;
    /// prevent host name resolution
    pub const NUMERICHOST = 4;
    /// prevent service name resolution
    pub const NUMERICSERV = 16;
    /// only if any address is assigned
    pub const ADDRCONFIG = 64;
};
pub const darwin = struct {
    /// get address to use bind()
    pub const PASSIVE = 0x00000001;
    /// fill ai_canonname
    pub const CANONNAME = 0x00000002;
    /// prevent host name resolution
    pub const NUMERICHOST = 0x00000004;
    /// prevent service name resolution
    pub const NUMERICSERV = 0x00001000;
};
pub const windows = struct {
    pub const PASSIVE = 1;
    pub const CANONNAME = 2;
    pub const NUMERICHOST = 4;
    pub const NUMERICSERV = 8;
    pub const DNS_ONLY = 16;
    pub const ALL = 256;
    pub const ADDRCONFIG = 1024;
    pub const V4MAPPED = 2048;
    pub const NON_AUTHORITATIVE = 16384;
    pub const SECURE = 32768;
    pub const RETURN_PREFERRED_NAMES = 65536;
    pub const FQDN = 131072;
    pub const FILESERVER = 262144;
    pub const DISABLE_IDN_ENCODING = 524288;
    pub const EXTENDED = 2147483648;
    pub const RESOLUTION_HANDLE = 1073741824;
};
