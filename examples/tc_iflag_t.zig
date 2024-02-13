pub const generic_linux = struct {
    pub const IGNBRK = 0o0000001;
    pub const BRKINT = 0o0000002;
    pub const IGNPAR = 0o0000004;
    pub const PARMRK = 0o0000010;
    pub const INPCK = 0o0000020;
    pub const ISTRIP = 0o0000040;
    pub const INLCR = 0o0000100;
    pub const IGNCR = 0o0000200;
    pub const ICRNL = 0o0000400;
    pub const IUCLC = 0o0001000;
    pub const IXON = 0o0002000;
    pub const IXANY = 0o0004000;
    pub const IXOFF = 0o0010000;
    pub const IMAXBEL = 0o0020000;
    pub const IUTF8 = 0o0040000;
};

pub const linux_ppc = struct {
    pub const IGNBRK = 0o0000001;
    pub const BRKINT = 0o0000002;
    pub const IGNPAR = 0o0000004;
    pub const PARMRK = 0o0000010;
    pub const INPCK = 0o0000020;
    pub const ISTRIP = 0o0000040;
    pub const INLCR = 0o0000100;
    pub const IGNCR = 0o0000200;
    pub const ICRNL = 0o0000400;
    pub const IXON = 0o0001000;
    pub const IXOFF = 0o0002000;
    pub const IXANY = 0o0004000;
    pub const IUCLC = 0o0010000;
    pub const IMAXBEL = 0o0020000;
    pub const IUTF8 = 0o0040000;
};

pub const darwin = struct {
    pub const IGNBRK = 0x00000001; // ignore BREAK condition
    pub const BRKINT = 0x00000002; // map BREAK to SIGINTR
    pub const IGNPAR = 0x00000004; // ignore (discard) parity errors
    pub const PARMRK = 0x00000008; // mark parity and framing errors
    pub const INPCK = 0x00000010; // enable checking of parity errors
    pub const ISTRIP = 0x00000020; // strip 8th bit off chars
    pub const INLCR = 0x00000040; // map NL into CR
    pub const IGNCR = 0x00000080; // ignore CR
    pub const ICRNL = 0x00000100; // map CR to NL (ala CRMOD)
    pub const IXON = 0x00000200; // enable output flow control
    pub const IXOFF = 0x00000400; // enable input flow control
    pub const IXANY = 0x00000800; // any char will restart after stop
    pub const IMAXBEL = 0x00002000; // ring bell on input queue full
    pub const IUTF8 = 0x00004000; // maintain state for UTF-8 VERASE
};

pub const netbsd = struct {
    pub const IGNBRK = 0x00000001; // ignore BREAK condition
    pub const BRKINT = 0x00000002; // map BREAK to SIGINT
    pub const IGNPAR = 0x00000004; // ignore (discard) parity errors
    pub const PARMRK = 0x00000008; // mark parity and framing errors
    pub const INPCK = 0x00000010; // enable checking of parity errors
    pub const ISTRIP = 0x00000020; // strip 8th bit off chars
    pub const INLCR = 0x00000040; // map NL into CR
    pub const IGNCR = 0x00000080; // ignore CR
    pub const ICRNL = 0x00000100; // map CR to NL (ala CRMOD)
    pub const IXON = 0x00000200; // enable output flow control
    pub const IXOFF = 0x00000400; // enable input flow control
    pub const IXANY = 0x00000800; // any char will restart after stop
    pub const IMAXBEL = 0x00002000; // ring bell on input queue full
};

pub const openbsd = struct {
    pub const IGNBRK = 0x00000001; // ignore BREAK condition
    pub const BRKINT = 0x00000002; // map BREAK to SIGINT
    pub const IGNPAR = 0x00000004; // ignore (discard) parity errors
    pub const PARMRK = 0x00000008; // mark parity and framing errors
    pub const INPCK = 0x00000010; // enable checking of parity errors
    pub const ISTRIP = 0x00000020; // strip 8th bit off chars
    pub const INLCR = 0x00000040; // map NL into CR
    pub const IGNCR = 0x00000080; // ignore CR
    pub const ICRNL = 0x00000100; // map CR to NL (ala CRMOD)
    pub const IXON = 0x00000200; // enable output flow control
    pub const IXOFF = 0x00000400; // enable input flow control
    pub const IXANY = 0x00000800; // any char will restart after stop
    pub const IUCLC = 0x00001000; // translate upper to lower case
    pub const IMAXBEL = 0x00002000; // ring bell on input queue full
};

pub const freebsd = struct {
    pub const IGNBRK = 0x00000001; //	/* ignore BREAK condition */
    pub const BRKINT = 0x00000002; //	/* map BREAK to SIGINTR */
    pub const IGNPAR = 0x00000004; //	/* ignore (discard) parity errors */
    pub const PARMRK = 0x00000008; //	/* mark parity and framing errors */
    pub const INPCK = 0x00000010; //	/* enable checking of parity errors */
    pub const ISTRIP = 0x00000020; //	/* strip 8th bit off chars */
    pub const INLCR = 0x00000040; //	/* map NL into CR */
    pub const IGNCR = 0x00000080; //	/* ignore CR */
    pub const ICRNL = 0x00000100; //	/* map CR to NL (ala CRMOD) */
    pub const IXON = 0x00000200; //	/* enable output flow control */
    pub const IXOFF = 0x00000400; //	/* enable input flow control */
    pub const IXANY = 0x00000800; //	/* any char will restart after stop */
    pub const IMAXBEL = 0x00002000; //	/* ring bell on input queue full */
};

pub const dragonfly = struct {
    pub const IGNBRK = 0x00000001; //	/* ignore BREAK condition */
    pub const BRKINT = 0x00000002; //	/* map BREAK to SIGINTR */
    pub const IGNPAR = 0x00000004; //	/* ignore (discard) parity errors */
    pub const PARMRK = 0x00000008; //	/* mark parity and framing errors */
    pub const INPCK = 0x00000010; //	/* enable checking of parity errors */
    pub const ISTRIP = 0x00000020; //	/* strip 8th bit off chars */
    pub const INLCR = 0x00000040; //	/* map NL into CR */
    pub const IGNCR = 0x00000080; //	/* ignore CR */
    pub const ICRNL = 0x00000100; //	/* map CR to NL (ala CRMOD) */
    pub const IXON = 0x00000200; //	/* enable output flow control */
    pub const IXOFF = 0x00000400; //	/* enable input flow control */
    pub const IXANY = 0x00000800; //	/* any char will restart after stop */
    pub const IMAXBEL = 0x00002000; //	/* ring bell on input queue full */
};

pub const emscripten = struct {
    pub const IGNBRK = 0o0000001; //
    pub const BRKINT = 0o0000002; //
    pub const IGNPAR = 0o0000004; //
    pub const PARMRK = 0o0000010; //
    pub const INPCK = 0o0000020; //
    pub const ISTRIP = 0o0000040; //
    pub const INLCR = 0o0000100; //
    pub const IGNCR = 0o0000200; //
    pub const ICRNL = 0o0000400; //
    pub const IUCLC = 0o0001000; //
    pub const IXON = 0o0002000; //
    pub const IXANY = 0o0004000; //
    pub const IXOFF = 0o0010000; //
    pub const IMAXBEL = 0o0020000; //
    pub const IUTF8 = 0o0040000; //
};

pub const wasi = struct {
    pub const IGNBRK = 0o0000001; //
    pub const BRKINT = 0o0000002; //
    pub const IGNPAR = 0o0000004; //
    pub const PARMRK = 0o0000010; //
    pub const INPCK = 0o0000020; //
    pub const ISTRIP = 0o0000040; //
    pub const INLCR = 0o0000100; //
    pub const IGNCR = 0o0000200; //
    pub const ICRNL = 0o0000400; //
    pub const IUCLC = 0o0001000; //
    pub const IXON = 0o0002000; //
    pub const IXANY = 0o0004000; //
    pub const IXOFF = 0o0010000; //
    pub const IMAXBEL = 0o0020000; //
    pub const IUTF8 = 0o0040000; //
};

pub const haiku = struct {
    pub const IGNBRK = 0x01; //		/* ignore break condition */
    pub const BRKINT = 0x02; //		/* break sends interrupt */
    pub const IGNPAR = 0x04; //		/* ignore characters with parity errors */
    pub const PARMRK = 0x08; //		/* mark parity errors */
    pub const INPCK = 0x10; //		/* enable input parity checking */
    pub const ISTRIP = 0x20; //		/* strip high bit from characters */
    pub const INLCR = 0x40; //		/* maps newline to CR on input */
    pub const IGNCR = 0x80; //		/* ignore carriage returns */
    pub const ICRNL = 0x100; //		/* map CR to newline on input */
    pub const IUCLC = 0x200; //		/* map all upper case to lower */
    pub const IXON = 0x400; //		/* enable input SW flow control */
    pub const IXANY = 0x800; //		/* any character will restart input */
    pub const IXOFF = 0x1000; //		/* enable output SW flow control */
};

pub const illumos = struct {
    pub const IGNBRK = 0o0000001; //
    pub const BRKINT = 0o0000002; //
    pub const IGNPAR = 0o0000004; //
    pub const PARMRK = 0o0000010; //
    pub const INPCK = 0o0000020; //
    pub const ISTRIP = 0o0000040; //
    pub const INLCR = 0o0000100; //
    pub const IGNCR = 0o0000200; //
    pub const ICRNL = 0o0000400; //
    pub const IUCLC = 0o0001000; //
    pub const IXON = 0o0002000; //
    pub const IXANY = 0o0004000; //
    pub const IMAXBEL = 0o0020000; //
    pub const DOSMODE = 0o0100000; //  /* for 386 compatibility */
};
