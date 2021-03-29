VERSION := 1.20.3
PREFIX := $(HOME)/.pkg/wget-$(VERSION)

PKG_CONFIG_PATH := $(HOME)/.pkg/nettle-3.7.2/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/p11-kit-0.23.22/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/gnutls-3.6.15/lib/pkgconfig:$(PKG_CONFIG_PATH)

.DEFAULT_GOAL := wget

.PHONY:\
	wget \
	clean

wget: clean
	curl -Ls -o wget-$(VERSION).tar.gz https://ftp.gnu.org/gnu/wget/wget-$(VERSION).tar.gz
	tar xf wget-$(VERSION).tar.gz
	cd wget-$(VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			./configure --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f wget-$(VERSION).tar.gz
	rm -rf wget-$(VERSION)
