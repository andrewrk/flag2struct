pub const generic_linux = struct {
    pub const ISIG = 0o0000001; //
    pub const ICANON = 0o0000002; //
    pub const ECHO = 0o0000010; //
    pub const ECHOE = 0o0000020; //
    pub const ECHOK = 0o0000040; //
    pub const ECHONL = 0o0000100; //
    pub const NOFLSH = 0o0000200; //
    pub const TOSTOP = 0o0000400; //
    pub const IEXTEN = 0o0100000; //
};

pub const linux_all_ppc = struct {
    pub const ECHOE = 0x00000002; //
    pub const ECHOK = 0x00000004; //
    pub const ECHO = 0x00000008; //
    pub const ECHONL = 0x00000010; //
    pub const ISIG = 0x00000080; //
    pub const ICANON = 0x00000100; //
    pub const IEXTEN = 0x00000400; //
    pub const TOSTOP = 0x00400000; //
    pub const NOFLSH = 0x80000000; //
};

pub const linux_all_mips = struct {
    pub const ISIG = 0o0000001; //
    pub const ICANON = 0o0000002; //
    pub const ECHO = 0o0000010; //
    pub const ECHOE = 0o0000020; //
    pub const ECHOK = 0o0000040; //
    pub const ECHONL = 0o0000100; //
    pub const NOFLSH = 0o0000200; //
    pub const IEXTEN = 0o0000400; //
    pub const TOSTOP = 0o0100000; //
};

pub const darwin = struct {
    pub const ECHOKE = 0x00000001; //      /* visual erase for line kill */
    pub const ECHOE = 0x00000002; //      /* visually erase chars */
    pub const ECHOK = 0x00000004; //      /* echo NL after line kill */
    pub const ECHO = 0x00000008; //      /* enable echoing */
    pub const ECHONL = 0x00000010; //      /* echo NL even if ECHO is off */
    pub const ECHOPRT = 0x00000020; //      /* visual erase mode for hardcopy */
    pub const ECHOCTL = 0x00000040; //      /* echo control chars as ^(Char) */
    pub const ISIG = 0x00000080; //      /* enable signals INTR, QUIT, [D]SUSP */
    pub const ICANON = 0x00000100; //      /* canonicalize input lines */
    pub const ALTWERASE = 0x00000200; //      /* use alternate WERASE algorithm */
    pub const IEXTEN = 0x00000400; //      /* enable DISCARD and LNEXT */
    pub const EXTPROC = 0x00000800; //      /* external processing */
    pub const TOSTOP = 0x00400000; //      /* stop background jobs from output */
    pub const FLUSHO = 0x00800000; //      /* output being flushed (state) */
    pub const NOKERNINFO = 0x02000000; //      /* no kernel output from VSTATUS */
    pub const PENDIN = 0x20000000; //      /* XXX retype pending input (state) */
    pub const NOFLSH = 0x80000000; //      /* don't flush after interrupt */
};

pub const netbsd = struct {
    pub const ECHOKE = 0x00000001; //	/* visual erase for line kill */
    pub const ECHOE = 0x00000002; //	/* visually erase chars */
    pub const ECHOK = 0x00000004; //	/* echo NL after line kill */
    pub const ECHO = 0x00000008; //	/* enable echoing */
    pub const ECHONL = 0x00000010; //	/* echo NL even if ECHO is off */
    pub const ECHOPRT = 0x00000020; //	/* visual erase mode for hardcopy */
    pub const ECHOCTL = 0x00000040; //	/* echo control chars as ^(Char) */
    pub const ISIG = 0x00000080; //	/* enable signals INT, QUIT, [D]SUSP */
    pub const ICANON = 0x00000100; //	/* canonicalize input lines */
    pub const ALTWERASE = 0x00000200; //	/* use alternate WERASE algorithm */
    pub const IEXTEN = 0x00000400; //	/* enable DISCARD and LNEXT */
    pub const EXTPROC = 0x00000800; //	/* external processing */
    pub const TOSTOP = 0x00400000; //	/* stop background jobs on output */
    pub const FLUSHO = 0x00800000; //	/* output being flushed (state) */
    pub const NOKERNINFO = 0x02000000; //	/* no kernel output from VSTATUS */
    pub const PENDIN = 0x20000000; //	/* re-echo input buffer at next read */
    pub const NOFLSH = 0x80000000; //	/* don't flush output on signal */
};

pub const openbsd = struct {
    pub const ECHOKE = 0x00000001; //	/* visual erase for line kill */
    pub const ECHOE = 0x00000002; //	/* visually erase chars */
    pub const ECHOK = 0x00000004; //	/* echo NL after line kill */
    pub const ECHO = 0x00000008; //	/* enable echoing */
    pub const ECHONL = 0x00000010; //	/* echo NL even if ECHO is off */
    pub const ECHOPRT = 0x00000020; //	/* visual erase mode for hardcopy */
    pub const ECHOCTL = 0x00000040; //	/* echo control chars as ^(Char) */
    pub const ISIG = 0x00000080; //	/* enable signals INTR, QUIT, [D]SUSP */
    pub const ICANON = 0x00000100; //	/* canonicalize input lines */
    pub const ALTWERASE = 0x00000200; //	/* use alternate WERASE algorithm */
    pub const IEXTEN = 0x00000400; //	/* enable DISCARD and LNEXT */
    pub const EXTPROC = 0x00000800; //      /* external processing */
    pub const TOSTOP = 0x00400000; //	/* stop background jobs from output */
    pub const FLUSHO = 0x00800000; //	/* output being flushed (state) */
    pub const XCASE = 0x01000000; //	/* canonical upper/lower case */
    pub const NOKERNINFO = 0x02000000; //	/* no kernel output from VSTATUS */
    pub const PENDIN = 0x20000000; //	/* XXX retype pending input (state) */
    pub const NOFLSH = 0x80000000; //	/* don't flush after interrupt */
};

pub const freebsd = struct {
    pub const ECHOKE = 0x00000001; //	/* visual erase for line kill */
    pub const ECHOE = 0x00000002; //	/* visually erase chars */
    pub const ECHOK = 0x00000004; //	/* echo NL after line kill */
    pub const ECHO = 0x00000008; //	/* enable echoing */
    pub const ECHONL = 0x00000010; //	/* echo NL even if ECHO is off */
    pub const ECHOPRT = 0x00000020; //	/* visual erase mode for hardcopy */
    pub const ECHOCTL = 0x00000040; //	/* echo control chars as ^(Char) */
    pub const ISIG = 0x00000080; //	/* enable signals INTR, QUIT, [D]SUSP */
    pub const ICANON = 0x00000100; //	/* canonicalize input lines */
    pub const ALTWERASE = 0x00000200; //	/* use alternate WERASE algorithm */
    pub const IEXTEN = 0x00000400; //	/* enable DISCARD and LNEXT */
    pub const EXTPROC = 0x00000800; //      /* external processing */
    pub const TOSTOP = 0x00400000; //	/* stop background jobs from output */
    pub const FLUSHO = 0x00800000; //	/* output being flushed (state) */
    pub const NOKERNINFO = 0x02000000; //	/* no kernel output from VSTATUS */
    pub const PENDIN = 0x20000000; //	/* XXX retype pending input (state) */
    pub const NOFLSH = 0x80000000; //	/* don't flush after interrupt */
};

pub const dragonfly = struct {
    pub const ECHOKE = 0x00000001; //	/* visual erase for line kill */
    pub const ECHOE = 0x00000002; //	/* visually erase chars */
    pub const ECHOK = 0x00000004; //	/* echo NL after line kill */
    pub const ECHO = 0x00000008; //	/* enable echoing */
    pub const ECHONL = 0x00000010; //	/* echo NL even if ECHO is off */
    pub const ECHOPRT = 0x00000020; //	/* visual erase mode for hardcopy */
    pub const ECHOCTL = 0x00000040; //	/* echo control chars as ^(Char) */
    pub const ISIG = 0x00000080; //	/* enable signals INTR, QUIT, [D]SUSP */
    pub const ICANON = 0x00000100; //	/* canonicalize input lines */
    pub const ALTWERASE = 0x00000200; //	/* use alternate WERASE algorithm */
    pub const IEXTEN = 0x00000400; //	/* enable DISCARD and LNEXT */
    pub const EXTPROC = 0x00000800; //      /* external processing */
    pub const TOSTOP = 0x00400000; //	/* stop background jobs from output */
    pub const FLUSHO = 0x00800000; //	/* output being flushed (state) */
    pub const NOKERNINFO = 0x02000000; //	/* no kernel output from VSTATUS */
    pub const PENDIN = 0x20000000; //	/* XXX retype pending input (state) */
    pub const NOFLSH = 0x80000000; //	/* don't flush after interrupt */
};

pub const haiku = struct {
    pub const ISIG = 0x01; //			/* enable signals */
    pub const ICANON = 0x02; //			/* Canonical input */
    pub const XCASE = 0x04; //			/* Canonical u/l case */
    pub const ECHO = 0x08; //			/* Enable echo */
    pub const ECHOE = 0x10; //			/* Echo erase as bs-sp-bs */
    pub const ECHOK = 0x20; //			/* Echo nl after kill */
    pub const ECHONL = 0x40; //			/* Echo nl */
    pub const NOFLSH = 0x80; //			/* Disable flush after int or quit */
    pub const TOSTOP = 0x100; //			/* stop bg processes that write to tty */
    pub const IEXTEN = 0x200; //			/* implementation defined extensions */
    pub const ECHOCTL = 0x400; //
    pub const ECHOPRT = 0x800; //
    pub const ECHOKE = 0x1000; //
    pub const FLUSHO = 0x2000; //
    pub const PENDIN = 0x4000; //
};

pub const illumos = struct {
    pub const ISIG = 0o0000001; //
    pub const ICANON = 0o0000002; //
    pub const XCASE = 0o0000004; //
    pub const ECHO = 0o0000010; //
    pub const ECHOE = 0o0000020; //
    pub const ECHOK = 0o0000040; //
    pub const ECHONL = 0o0000100; //
    pub const NOFLSH = 0o0000200; //
    pub const TOSTOP = 0o0000400; //
    pub const ECHOCTL = 0o0001000; //
    pub const ECHOPRT = 0o0002000; //
    pub const ECHOKE = 0o0004000; //
    pub const DEFECHO = 0o0010000; //
    pub const FLUSHO = 0o0020000; //
    pub const PENDIN = 0o0040000; //
    pub const IEXTEN = 0o0100000; //  /* POSIX flag - enable POSIX extensions */
};

pub const wasi = struct {
    pub const ISIG = 0o0000001; //
    pub const ICANON = 0o0000002; //
    pub const ECHO = 0o0000010; //
    pub const ECHOE = 0o0000020; //
    pub const ECHOK = 0o0000040; //
    pub const ECHONL = 0o0000100; //
    pub const NOFLSH = 0o0000200; //
    pub const TOSTOP = 0o0000400; //
    pub const IEXTEN = 0o0100000; //
};

pub const emscripten = struct {
    pub const ISIG = 0o0000001; //
    pub const ICANON = 0o0000002; //
    pub const ECHO = 0o0000010; //
    pub const ECHOE = 0o0000020; //
    pub const ECHOK = 0o0000040; //
    pub const ECHONL = 0o0000100; //
    pub const NOFLSH = 0o0000200; //
    pub const TOSTOP = 0o0000400; //
    pub const IEXTEN = 0o0100000; //
};
