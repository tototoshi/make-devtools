TMUX_VERSION := 3.1c
REATTACH_TO_USER_NAMESPACE_VERSION := 2.9
PREFIX=$(HOME)/.pkg/tmux-$(TMUX_VERSION)

PKG_CONFIG_PATH := $(HOME)/.pkg/libevent-2.1.12/lib/pkgconfig:$(PKG_CONFIG_PATH)

.DEFAULT_GOAL := all

.PHONY:\
	all \
	clean \
	tmux \
	reattach-to-user-namespace \

all:\
	clean \
	tmux \
	reattach-to-user-namespace

tmux:
	curl -Ls -o tmux-$(TMUX_VERSION).tar.gz \
		https://github.com/tmux/tmux/releases/download/$(TMUX_VERSION)/tmux-$(TMUX_VERSION).tar.gz
	tar xf tmux-$(TMUX_VERSION).tar.gz
	cd tmux-$(TMUX_VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) ./configure --prefix=$(PREFIX) && make && make install

reattach-to-user-namespace:
	curl -Ls -o v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz \
		https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/archive/refs/tags/v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	tar xf v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	cd tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION) && \
		make &&\
		mv -f reattach-to-user-namespace $(PREFIX)/bin

clean:
	rm -f tmux-$(TMUX_VERSION).tar.gz
	rm -rf tmux-$(TMUX_VERSION)
	rm -rf cd tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION)
	rm -f v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz
