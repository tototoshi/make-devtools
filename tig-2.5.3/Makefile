VERSION := 2.5.3
PREFIX := $(HOME)/.pkg/tig-$(VERSION)

.DEFAULT_GOAL := tig

.PHONY:
	tig \
	clean

tig: clean
	curl -Ls -o tig-$(VERSION).tar.gz \
		https://github.com/jonas/tig/releases/download/tig-$(VERSION)/tig-$(VERSION).tar.gz
	tar xf tig-$(VERSION).tar.gz
	cd tig-$(VERSION) &&\
		./configure --prefix=$(PREFIX) && make && make install

clean:
	rm -f tig-$(VERSION).tar.gz
	rm -rf tig-$(VERSION)
