CURL_VERSION := 7.75.0
CURL_VERSION_2 := 7_75_0
PREFIX := $(HOME)/.pkg/curl-$(CURL_VERSION)

PKG_CONFIG_PATH := $(PKG_CONFIG_PATH):$(HOME)/.pkg/openssl-1.1.1k/lib/pkgconfig

.DEFAULT_GOAL := curl

.PHONY:\
	curl \
	clean

curl:
	mkdir -p $(PREFIX)
	curl -LsO https://github.com/curl/curl/releases/download/curl-$(CURL_VERSION_2)/curl-$(CURL_VERSION).tar.xz
	tar xf curl-$(CURL_VERSION).tar.xz
	cd curl-$(CURL_VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) ./configure \
			--prefix=$(PREFIX) \
			--with-ssl &&\
		make &&\
		make install

clean:
	rm -f curl-$(CURL_VERSION).tar.xz
	rm -rf curl-$(CURL_VERSION)
