WGET_VERSION := 1.20.3
PREFIX := $(HOME)/.pkg/wget-$(WGET_VERSION)

.PHONY:\
	$(PREFIX) \
	wget

all:\
	$(PREFIX) \
	wget

$(PREFIX):
	mkdir -p $(PREFIX)

wget:
	curl -Ls -o wget-$(WGET_VERSION).tar.gz https://ftp.gnu.org/gnu/wget/wget-$(WGET_VERSION).tar.gz
	tar xf wget-$(WGET_VERSION).tar.gz
	cd wget-$(WGET_VERSION) &&\
	./configure --prefix=$(PREFIX) && make && make install
