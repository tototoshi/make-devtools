VERSION := 3.7.2
PREFIX := $(HOME)/.pkg/nettle-$(VERSION)

.DEFAULT_GOAL = nettle

.PHONY:\
	nettle \
	clean

rebuild: uninstall nettle

nettle: clean
	curl -LsO https://ftp.gnu.org/gnu/nettle/nettle-$(VERSION).tar.gz
	tar xf nettle-$(VERSION).tar.gz
	cd nettle-$(VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			./configure \
			--prefix=$(PREFIX) \
			--enable-mini-gmp &&\
		make &&\
		make install

clean:
	rm -f nettle-$(VERSION).tar.gz
	rm -rf nettle-$(VERSION)

uninstall:
	rm -rf $(PREFIX)
