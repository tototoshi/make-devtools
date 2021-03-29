GIT_VERSION := 2.31.1
PREFIX := $(HOME)/.pkg/git-$(GIT_VERSION)

PKG_CONFIG_PATH := $(PKG_CONFIG_PATH):$(HOME)/.pkg/openssl-1.1.1k/lib/pkgconfig

.DEFAULT_GOAL := git

.PHONY:\
	git \
	clean

git: clean
	curl -LsO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) ./configure \
			--with-openssl \
			--prefix=$(PREFIX) &&\
		make &&\
		make install

clean:
	rm -f git-$(GIT_VERSION).tar.gz
	rm -rf git-$(GIT_VERSION)
