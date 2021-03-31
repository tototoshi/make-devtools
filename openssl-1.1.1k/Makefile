VERSION := 1.1.1k
PREFIX := $(HOME)/.pkg/openssl-$(VERSION)

.DEFAULT_GOAL := install

.PHONY:\
	install \
	clean

install: clean
	curl -LsO http://ftp.openssl.org/source/openssl-$(VERSION).tar.gz
	tar xf openssl-$(VERSION).tar.gz
	cd openssl-$(VERSION) &&\
		./config --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f openssl-$(VERSION).tar.gz
	rm -rf openssl-$(VERSION)
