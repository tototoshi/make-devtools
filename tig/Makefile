TIG_VERSION := 2.5.3
PREFIX := $(HOME)/.pkg/tig-$(TIG_VERSION)

.PHONY:
	all \
	$(PREFIX) \
	tig

all:\
	$(PREFIX) \
	tig

$(PREFIX):
	mkdir -p $(PREFIX)

tig:
	curl -Ls -o tig-$(TIG_VERSION).tar.gz \
		https://github.com/jonas/tig/releases/download/tig-$(TIG_VERSION)/tig-$(TIG_VERSION).tar.gz
	tar xf tig-$(TIG_VERSION).tar.gz
	cd tig-$(TIG_VERSION) &&\
	./configure --prefix=$(PREFIX) && make && make install
