VERSION := 1.2.11
PREFIX := $(HOME)/.pkg/zlib-$(VERSION)

.DEFAULT_GOAL := zlib

.PHONY:\
	zlib \
	clean

zlib: clean
	curl -LO https://zlib.net/zlib-$(VERSION).tar.xz &&\
	tar xf zlib-$(VERSION).tar.xz &&\
	cd zlib-$(VERSION) &&\
		./configure --prefix=$(PREFIX) && make && make install

clean:
	rm -f zlib-$(VERSION).tar.xz
	rm -rf zlib-$(VERSION)
