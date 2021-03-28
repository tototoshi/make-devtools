TMUX_VERSION := 3.1c
REATTACH_TO_USER_NAMESPACE_VERSION := 2.9
PREFIX=$(HOME)/.pkg/tmux-$(TMUX_VERSION)

.PHONY:\
	all \
	$(PREFIX) \
	tmux \
	reattach-to-user-namespace \
	.tmux.conf

all:\
	$(PREFIX) \
	tmux \
	reattach-to-user-namespace \
	tmux.conf

$(PREFIX):
	mkdir -p $(PREFIX)

.tmux:
	curl -Ls -o tmux-$(TMUX_VERSION).tar.gz \
		https://github.com/tmux/tmux/releases/download/$(TMUX_VERSION)/tmux-$(TMUX_VERSION).tar.gz
	tar xf tmux-$(TMUX_VERSION).tar.gz
	cd tmux-$(TMUX_VERSION) &&\
	./configure --prefix=$(PREFIX) && make && make install

reattach-to-user-namespace:
	curl -Ls -o v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz \
		https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/archive/refs/tags/v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	tar xf v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	cd tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION) && \
		make &&\
		mv -f reattach-to-user-namespace $(PREFIX)/bin

.tmux.conf:
	cp -f tmux.conf $(HOME)/.tmux.conf
