VERSION := 2.1.12
PREFIX := $(HOME)/.pkg/libevent-$(VERSION)

PKG_CONFIG_PATH := $(HOME)/.pkg/openssl-1.1.1k/lib/pkgconfig:$(PKG_CONFIG_PATH)

.DEFAULT_GOAL := libevent

.PHONY:\
	clean \
	libevent

libevent: clean
	curl -LsO https://github.com/libevent/libevent/releases/download/release-$(VERSION)-stable/libevent-$(VERSION)-stable.tar.gz
	tar xf libevent-$(VERSION)-stable.tar.gz
	cd libevent-$(VERSION)-stable &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			./configure --prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -rf libevent-$(VERSION)-stable
	rm -f libevent-$(VERSION)-stable.tar.gz
