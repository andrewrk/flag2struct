pub const linux = struct {
    pub const NUMERICHOST = 0x01;
    pub const NUMERICSERV = 0x02;
    pub const NOFQDN = 0x04;
    pub const NAMEREQD = 0x08;
    pub const DGRAM = 0x10;
    pub const NUMERICSCOPE = 0x100;
};
pub const emscripten = struct {
    pub const NUMERICHOST = 0x01;
    pub const NUMERICSERV = 0x02;
    pub const NOFQDN = 0x04;
    pub const NAMEREQD = 0x08;
    pub const DGRAM = 0x10;
    pub const NUMERICSCOPE = 0x100;
    //pub const MAXHOST = 255;
    //pub const MAXSERV = 32;
};
pub const solaris = struct {
    pub const NOFQDN = 0x0001;
    pub const NUMERICHOST = 0x0002;
    pub const NAMEREQD = 0x0004;
    pub const NUMERICSERV = 0x0008;
    pub const DGRAM = 0x0010;
    pub const WITHSCOPEID = 0x0020;
    pub const NUMERICSCOPE = 0x0040;

    //pub const MAXHOST = 1025;
    //pub const MAXSERV = 32;
};
