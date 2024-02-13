pub const generic_linux = struct {
    //pub const CSIZE = 0o0000060; //
    //pub const CS5 = 0o0000000; //
    pub const CS6 = 0o0000020; //
    pub const CS7 = 0o0000040; //
    //pub const CS8 = 0o0000060; //
    pub const CSTOPB = 0o0000100; //
    pub const CREAD = 0o0000200; //
    pub const PARENB = 0o0000400; //
    pub const PARODD = 0o0001000; //
    pub const HUPCL = 0o0002000; //
    pub const CLOCAL = 0o0004000; //
};

pub const linux_all_ppc = struct {
    //pub const CSIZE = 0o00001400; //
    //pub const CS5 = 0o00000000; //
    pub const CS6 = 0o00000400; //
    pub const CS7 = 0o00001000; //
    //pub const CS8 = 0o00001400; //
    pub const CSTOPB = 0o00002000; //
    pub const CREAD = 0o00004000; //
    pub const PARENB = 0o00010000; //
    pub const PARODD = 0o00020000; //
    pub const HUPCL = 0o00040000; //
    pub const CLOCAL = 0o00100000; //
};

pub const darwin = struct {
    pub const CIGNORE = 0x00000001; // ignore control flags
    //pub const CSIZE = 0x00000300; // character size mask
    //pub const CS5 = 0x00000000; //    5 bits (pseudo)
    pub const CS6 = 0x00000100; //    6 bits
    pub const CS7 = 0x00000200; //    7 bits
    //pub const CS8 = 0x00000300; //    8 bits
    pub const CSTOPB = 0x0000040; // send 2 stop bits
    pub const CREAD = 0x00000800; // enable receiver
    pub const PARENB = 0x00001000; // parity enable
    pub const PARODD = 0x00002000; // odd parity, else even
    pub const HUPCL = 0x00004000; // hang up on last close
    pub const CLOCAL = 0x00008000; // ignore modem status lines
    pub const CCTS_OFLOW = 0x00010000; // CTS flow control of output
    //pub const CRTSCTS = (CCTS_OFLOW | CRTS_IFLOW);
    pub const CRTS_IFLOW = 0x00020000; // RTS flow control of input
    pub const CDTR_IFLOW = 0x00040000; // DTR flow control of input
    pub const CDSR_OFLOW = 0x00080000; // DSR flow control of output
    pub const CCAR_OFLOW = 0x00100000; // DCD flow control of output
    //pub const MDMBUF = 0x00100000; // old name for CCAR_OFLOW
};

pub const netbsd = struct {
    pub const CIGNORE = 0x00000001; // ignore control flags
    //pub const CSIZE = 0x00000300; // character size mask
    //pub const CS5 = 0x00000000; // 5 bits (pseudo)
    pub const CS6 = 0x00000100; // 6 bits
    pub const CS7 = 0x00000200; // 7 bits
    //pub const CS8 = 0x00000300; // 8 bits
    pub const CSTOPB = 0x00000400; // send 2 stop bits
    pub const CREAD = 0x00000800; // enable receiver
    pub const PARENB = 0x00001000; // parity enable
    pub const PARODD = 0x00002000; // odd parity, else even
    pub const HUPCL = 0x00004000; // hang up on last close
    pub const CLOCAL = 0x00008000; // ignore modem status lines
    pub const CRTSCTS = 0x00010000; // RTS/CTS full-duplex flow control
    //pub const CRTS_IFLOW = CRTSCTS; // XXX compat
    //pub const CCTS_OFLOW = CRTSCTS; // XXX compat
    pub const CDTRCTS = 0x00020000; // DTR/CTS full-duplex flow control
    pub const MDMBUF = 0x00100000; // DTR/DCD hardware flow control
    //pub const CHWFLOW = (MDMBUF | CRTSCTS | CDTRCTS); // all types of hw flow control
};

pub const openbsd = struct {
    pub const CIGNORE = 0x00000001; // ignore control flags
    //pub const CSIZE = 0x00000300; // character size mask
    //pub const CS5 = 0x00000000; // 5 bits (pseudo)
    pub const CS6 = 0x00000100; // 6 bits
    pub const CS7 = 0x00000200; // 7 bits
    //pub const CS8 = 0x00000300; // 8 bits
    pub const CSTOPB = 0x00000400; // send 2 stop bits
    pub const CREAD = 0x00000800; // enable receiver
    pub const PARENB = 0x00001000; // parity enable
    pub const PARODD = 0x00002000; // odd parity, else even
    pub const HUPCL = 0x00004000; // hang up on last close
    pub const CLOCAL = 0x00008000; // ignore modem status lines
    pub const CRTSCTS = 0x00010000; // RTS/CTS full-duplex flow control
    pub const MDMBUF = 0x00100000; // DTR/DCD hardware flow control
    //pub const CHWFLOW = (MDMBUF | CRTSCTS); // all types of hw flow control
};

pub const freebsd = struct {
    pub const CIGNORE = 0x00000001; //	/* ignore control flags */
    //pub const CSIZE = 0x00000300; //	/* character size mask */
    //pub const CS5 = 0x00000000; //	    /* 5 bits (pseudo) */
    pub const CS6 = 0x00000100; //	    /* 6 bits */
    pub const CS7 = 0x00000200; //	    /* 7 bits */
    //pub const CS8 = 0x00000300; //	    /* 8 bits */
    pub const CSTOPB = 0x00000400; //	/* send 2 stop bits */
    pub const CREAD = 0x00000800; //	/* enable receiver */
    pub const PARENB = 0x00001000; //	/* parity enable */
    pub const PARODD = 0x00002000; //	/* odd parity, else even */
    pub const HUPCL = 0x00004000; //	/* hang up on last close */
    pub const CLOCAL = 0x00008000; //	/* ignore modem status lines */
    pub const CCTS_OFLOW = 0x00010000; //	/* CTS flow control of output */
    //pub const CRTSCTS = (CCTS_OFLOW | CRTS_IFLOW);
    pub const CRTS_IFLOW = 0x00020000; //	/* RTS flow control of input */
    pub const CDTR_IFLOW = 0x00040000; //	/* DTR flow control of input */
    pub const CDSR_OFLOW = 0x00080000; //	/* DSR flow control of output */
    pub const CCAR_OFLOW = 0x00100000; //	/* DCD flow control of output */
    pub const CNO_RTSDTR = 0x00200000; //	/* Do not assert RTS or DTR automatically */
};

pub const dragonfly = struct {
    pub const CIGNORE = 0x00000001; //	/* ignore control flags */
    //pub const CSIZE = 0x00000300; //	/* character size mask */
    //pub const CS5 = 0x00000000; //	    /* 5 bits (pseudo) */
    pub const CS6 = 0x00000100; //	    /* 6 bits */
    pub const CS7 = 0x00000200; //	    /* 7 bits */
    //pub const CS8 = 0x00000300; //	    /* 8 bits */
    pub const CSTOPB = 0x00000400; //	/* send 2 stop bits */
    pub const CREAD = 0x00000800; //	/* enable receiver */
    pub const PARENB = 0x00001000; //	/* parity enable */
    pub const PARODD = 0x00002000; //	/* odd parity, else even */
    pub const HUPCL = 0x00004000; //	/* hang up on last close */
    pub const CLOCAL = 0x00008000; //	/* ignore modem status lines */
    pub const CCTS_OFLOW = 0x00010000; //	/* CTS flow control of output */
    //pub const CRTSCTS = (CCTS_OFLOW | CRTS_IFLOW);
    pub const CRTS_IFLOW = 0x00020000; //	/* RTS flow control of input */
    pub const CDTR_IFLOW = 0x00040000; //	/* DTR flow control of input */
    pub const CDSR_OFLOW = 0x00080000; //	/* DSR flow control of output */
    pub const CCAR_OFLOW = 0x00100000; //	/* DCD flow control of output */
    //pub const MDMBUF = CCAR_OFLOW; //	/* old name for CCAR_OFLOW */
};

pub const haiku = struct {
    //pub const CBAUD = 0x1F; //			/* line speed definitions */
    //pub const CSIZE = 0x20; //			/* character size */
    //pub const CS5 = 0x00; //			/* only 7 and 8 bits supported */
    //pub const CS6 = 0x00; //			/* Note, it was not very wise to set all of these */
    //pub const CS7 = 0x00; //			/* to zero, but there is not much we can do about it*/
    pub const CS8 = 0x20; //
    pub const CSTOPB = 0x40; //			/* send 2 stop bits, not 1 */
    pub const CREAD = 0x80; //			/* enable receiver */
    pub const PARENB = 0x100; //			/* parity enable */
    pub const PARODD = 0x200; //			/* odd parity, else even */
    pub const HUPCL = 0x400; //			/* hangs up on last close */
    pub const CLOCAL = 0x800; //			/* indicates local line */
    pub const XLOBLK = 0x1000; //			/* block layer output ?*/
    pub const CTSFLOW = 0x2000; //			/* enable CTS flow */
    pub const RTSFLOW = 0x4000; //			/* enable RTS flow */
    ////pub const CRTSCTS = (RTSFLOW | CTSFLOW);
};

pub const illumos = struct {
    //pub const CBAUD = 0o0000017; //
    //pub const CSIZE = 0o0000060; //
    //pub const CS5 = 0o0; //
    pub const CS6 = 0o0000020; //
    pub const CS7 = 0o0000040; //
    //pub const CS8 = 0o0000060; //
    pub const CSTOPB = 0o0000100; //
    pub const CREAD = 0o0000200; //
    pub const PARENB = 0o0000400; //
    pub const PARODD = 0o0001000; //
    pub const HUPCL = 0o0002000; //
    pub const CLOCAL = 0o0004000; //
    pub const RCV1EN = 0o0010000; //
    pub const XMT1EN = 0o0020000; //
    pub const LOBLK = 0o0040000; //
    pub const XCLUDE = 0o0100000; //		/* *V7* exclusive use coming fron XENIX */
    pub const CRTSXOFF = 0o010000000000; //
    pub const CRTSCTS = 0o020000000000; //
    //pub const CIBAUD = 0o03600000; //
    pub const PAREXT = 0o04000000; //
    pub const CBAUDEXT = 0o010000000; //
    pub const CIBAUDEXT = 0o020000000; //
};

pub const wasi = struct {
    //pub const CSIZE = 0o0000060; //
    //pub const CS5 = 0o0000000; //
    pub const CS6 = 0o0000020; //
    pub const CS7 = 0o0000040; //
    //pub const CS8 = 0o0000060; //
    pub const CSTOPB = 0o0000100; //
    pub const CREAD = 0o0000200; //
    pub const PARENB = 0o0000400; //
    pub const PARODD = 0o0001000; //
    pub const HUPCL = 0o0002000; //
    pub const CLOCAL = 0o0004000; //
};

pub const emscripten = struct {
    //pub const CSIZE = 0o0000060; //
    //pub const CS5 = 0o0000000; //
    pub const CS6 = 0o0000020; //
    pub const CS7 = 0o0000040; //
    //pub const CS8 = 0o0000060; //
    pub const CSTOPB = 0o0000100; //
    pub const CREAD = 0o0000200; //
    pub const PARENB = 0o0000400; //
    pub const PARODD = 0o0001000; //
    pub const HUPCL = 0o0002000; //
    pub const CLOCAL = 0o0004000; //
};
