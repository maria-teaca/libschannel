AM_CFLAGS=	-Wall -Wextra -pedantic -Wshadow -Wpointer-arith -Wcast-align
AM_CFLAGS+=	-Wwrite-strings -Wmissing-prototypes -Wmissing-declarations
AM_CFLAGS+=	-Wnested-externs -Winline -Wno-long-long  -Wunused-variable
AM_CFLAGS+=	-Wstrict-prototypes -I../../libvrpc/vrpc -Irealm
AM_LDFLAGS=	-L.
CC=		gcc

lib_LTLIBRARIES = libschannel.la
nobase_include_HEADERS = schannel/schannel.h

libschannel_la_SOURCES = schannel.c realm/realm_clnt.c realm/realm_xdr.c

analyze:
	$(CC) $(AM_CFLAGS) --analyze *.c
