VERSION := 0.23.22
PREFIX := $(HOME)/.pkg/p11-kit-$(VERSION)

PKG_CONFIG_PATH := $(HOME)/.pkg/libtasn1-4.16.0/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/libffi-3.3/lib/pkgconfig:$(PKG_CONFIG_PATH)

.DEFAULT_GOAL := p11-kit

.PHONY:\
	p11-kit \
	clean

p11-kit: clean
	curl -LsO https://github.com/p11-glue/p11-kit/releases/download/$(VERSION)/p11-kit-$(VERSION).tar.xz
	tar xf p11-kit-$(VERSION).tar.xz
	cd p11-kit-$(VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			./configure \
			--prefix=$(PREFIX) \
			--without-trust-paths \
			&&\
		make &&\
		make install

clean:
	rm -f p11-kit-$(VERSION).tar.xz
	rm -rf p11-kit-$(VERSION)
