GIT_VERSION := 2.31.1
PREFIX := $(HOME)/.pkg/git-$(GIT_VERSION)


.PHONY:\
	all \
	$(PREFIX) \
	zlib

all:\
	$(PREFIX) \
	git

$(PREFIX):
	mkdir -p $(PREFIX)

git:
	curl -LO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION) &&\
	./configure --prefix=$(PREFIX) && make && make install
