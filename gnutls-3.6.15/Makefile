VERSION := 3.6.15
VERSION_MAJOR_MINOR := 3.6
PREFIX := $(HOME)/.pkg/gnutls-$(VERSION)

PKG_CONFIG_PATH := $(HOME)/.pkg/nettle-3.7.2/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/p11-kit-0.23.22/lib/pkgconfig:$(PKG_CONFIG_PATH)

GMP_LIBS := $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --libs gmp)
GMP_CFLAGS := $(shell PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags gmp)

.DEFAULT_GOAL := gnutls

.PHONY:\
	gnutls \
	clean

gnutls: clean
	curl -LsO https://www.gnupg.org/ftp/gcrypt/gnutls/v$(VERSION_MAJOR_MINOR)/gnutls-$(VERSION).tar.xz
	tar xf gnutls-$(VERSION).tar.xz
	cd gnutls-$(VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			./configure \
			--prefix=$(PREFIX) \
			--with-nettle-mini \
			--with-included-unistring \
			--with-included-libtasn1 &&\
		make &&\
		make install

clean:
	rm -f gnutls-$(VERSION).tar.xz
	rm -rf gnutls-$(VERSION)
