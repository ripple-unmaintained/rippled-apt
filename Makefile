DESTDIR := /usr/local

all: build/gcc.release/rippled

build/gcc.release/rippled:
	scons gcc.release

install: build/gcc.release/rippled
	install -D doc/rippled-example.cfg $(DESTDIR)/etc/rippled/rippled.cfg
	install -D build/gcc.release/rippled $(DESTDIR)/usr/bin/rippled

clean:
	rm -rf build
