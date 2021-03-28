EMACS_VERSION := 27.2
PREFIX := $(HOME)/.pkg/emacs-$(EMACS_VERSION)

.PHONY:\
	$(PREFIX) \
	all \
	emacs

all:\
	$(PREFIX) \
	emacs

$(PREFIX):
	mkdir -p $(PREFIX)

emacs:
	curl -LO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
	./configure --prefix=$(PREFIX) --without-ns && make && make install
