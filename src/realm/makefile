CC=$(CROSS_COMPILE)gcc
INCPATHS=. .. ../../../libvrpc/vrpc/
STATIC_LIBS=../../../output/libvrpc.a
LIBS=sodium
LIBPATHS=../../../output/
CFLAGS=-Wall -g
CSOURCES=realm_svc.c realm_xdr.c
SSOURCES=$(wildcard *.s)

INCFLAGS=$(foreach TMP,$(INCPATHS),-I$(TMP))
LIBFLAGS=$(foreach TMP,$(LIBPATHS),-L$(TMP)) $(foreach TMP,$(LIBS),-l$(TMP))
OBJECTS=$(CSOURCES:.c=.o) $(SSOURCES:.S=.o)

all: $(CSOURCES) build

build: $(OBJECTS)
	$(CC) $(INCFLAGS) -static realm_svc.o realm_xdr.o -o realm_server $(STATIC_LIBS) $(LIBFLAGS)

.c.o:
	$(CC) $(CFLAGS) $(INCFLAGS) -c -fPIC $< -o $@

.S.o:
	$(CC) $(CFLAGS) $(INCFLAGS) -c -fPIC $< -o $@

clean:
	rm -f *.o realm_server
