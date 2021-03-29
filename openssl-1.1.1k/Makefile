VERSION := 1.1.1k
PREFIX := $(HOME)/.pkg/openssl-$(VERSION)

openssl: clean
	curl -LsO http://ftp.openssl.org/source/openssl-$(VERSION).tar.gz
	tar xf openssl-$(VERSION).tar.gz
	cd openssl-$(VERSION) &&\
		./config --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f openssl-$(VERSION).tar.gz
	rm -rf openssl-$(VERSION)
