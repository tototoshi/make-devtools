VERSION := 6.2.1
PREFIX := $(HOME)/.pkg/gmp-$(VERSION)

.DEFAULT_GOAL := gmp

.PHONY:\
	gmp \
	clean

gmp: clean
	curl -LsO https://gmplib.org/download/gmp/gmp-$(VERSION).tar.xz
	tar xf gmp-$(VERSION).tar.xz
	cd gmp-$(VERSION) &&\
		./configure --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f gmp-$(VERSION).tar.xz
	rm -rf gmp-$(VERSION)
