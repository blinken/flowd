#	$Id$

PROG=	flowd

SRCS=	flowd.c addr.c parse.y privsep_fdpass.c privsep.c atomicio.c
LDADD+=	-levent

CFLAGS+= -Wall -I${.CURDIR}
CFLAGS+= -Wstrict-prototypes -Wmissing-prototypes
CFLAGS+= -Wmissing-declarations
CFLAGS+= -Wshadow -Wpointer-arith -Wcast-qual
CFLAGS+= -Wsign-compare
YFLAGS=

MAN=
#MAN= flowd.8

.include <bsd.prog.mk>