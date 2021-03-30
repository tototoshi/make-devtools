VERSION := 2.4.6
PREFIX := $(HOME)/.pkg/libtool-$(VERSION)

.DEFAULT_GOAL := libtool

.PHONY:\
	libtool \
	clean

libtool: clean
	curl -LsO https://ftp.gnu.org/gnu/libtool/libtool-$(VERSION).tar.gz
	tar xf libtool-$(VERSION).tar.gz
	cd libtool-$(VERSION) &&\
		./configure --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f libtool-$(VERSION).tar.gz
	rm -rf libtool-$(VERSION)
