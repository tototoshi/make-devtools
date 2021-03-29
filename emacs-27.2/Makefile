EMACS_VERSION := 27.2
PREFIX := $(HOME)/.pkg/emacs-$(EMACS_VERSION)

# To build with -lgnutls, nettle and p11 also need to be included in PKG_CONFIG_PATH
PKG_CONFIG_PATH := $(HOME)/.pkg/nettle-3.7.2/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/p11-kit-0.23.22/lib/pkgconfig:$(PKG_CONFIG_PATH)
PKG_CONFIG_PATH := $(HOME)/.pkg/gnutls-3.6.15/lib/pkgconfig:$(PKG_CONFIG_PATH)

.DEFAULT_GOAL = emacs

.PHONY:\
	clean \
	emacs

emacs: clean
	# Checking dependencies to build with -lgnutls.
	# If nettle and p11-kit are not included, This task will stop here.
	PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags gnutls

	curl -LsO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
			PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
				./configure --prefix=$(PREFIX) --without-ns &&\
			make &&\
			make install

clean:
	rm -f emacs-$(EMACS_VERSION).tar.xz
	rm -rf emacs-$(EMACS_VERSION)
