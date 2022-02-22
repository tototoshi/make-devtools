PREFIX := $(HOME)/.pkgs

BIN := $(PREFIX)/bin
LIB := $(PREFIX)/lib
OPT := $(PREFIX)/opt

AG_VERSION := 2.2.0
AUTOCONF_VERSION := 2.71
AUTOMAKE_VERSION := 1.16.4
BISON_VERSION := 3.7.6
CMAKE_VERSION := 3.21.1
COREUTILS_VERSION := 8.32
CURL_VERSION := 7.78.0
EMACS_VERSION := 27.2
GETTEXT_VERSION := 0.21
GIT_VERSION := 2.33.0
GLOBAL_VERSION := 6.6.8
GNUTLS_VERSION := 3.6.15
GNUTLS_VERSION_MAJOR_MINOR := 3.6
GOBJECT_INTROSPECTION_VERSION := 1.69.0
GOBJECT_INTROSPECTION_VERSION_MAJOR_MINOR := 1.69
GRAPHVIZ_VERSION := 2.48.0
ICONV_VERSION := 59
IMAGEMAGICK_VERSION := 7.1.0-4
LIBEVENT_VERSION := 2.1.12
LIBFFI_VERSION := 3.3
LIBNETTLE_VERSION := 3.7.2
LIBPCRE_VERSION := 8.44
LIBPNG_VERSION := 1.6.37
LIBTASN1_VERSION := 4.16.0
LIBTOOL_VERSION := 2.4.6
LIBXML_VERSION := 2.9.10
NODE_VERSION := 16.14.0
ONIGURUMA_VERSION := 6.9.6
OPENSSL_VERSION := 1.1.1k
P11_KIT_VERSION := 0.23.22
PHP_VERSION := 8.0.15
PNGPASTE_VERSION := 0.2.3
PKGCONFIG_VERSION := 0.29.2
PYTHON_VERSION := 3.9.6
REATTACH_TO_USER_NAMESPACE_VERSION := 2.9
RUBY_VERSION := 3.0.2
SBT_VERSION := 1.6.2
SQLITE_VERSION := 3.36.0
TIG_VERSION := 2.5.3
TMUX_VERSION := 3.2a
XZ_VERSION := 5.2.5
ZLIB_VERSION := 1.2.11

PHP_PREFIX := $(OPT)/php-$(PHP_VERSION)
PHP_BIN := $(PHP_PREFIX)/bin
NINJA_BIN := $(OPT)/ninja/bin
NODE_PREFIX := $(OPT)/node-$(NODE_VERSION)
NODE_BIN := $(NODE_PREFIX)/bin

AG := $(BIN)/ag
ANSIBLE := $(OPT)/ansible/bin/ansible
AUTOCONF := $(BIN)/autoconf
AUTOMAKE := $(BIN)/automake
BISON := $(BIN)/bison
CMAKE := $(BIN)/cmake
COREUTILS := $(BIN)/cat
COURSIER := $(BIN)/coursier
CS := $(BIN)/cs
CURL := $(BIN)/curl
DIFF_HIGHLIGHT := $(BIN)/diff-highlight
EMACS := $(BIN)/emacs
GIT := $(BIN)/git
GETTEXT := $(BIN)/gettext
GLIBTOOL := $(BIN)/glibtool
GLOBAL := $(BIN)/global
GNUTLS := $(BIN)/gnutls-cli
GOBJECT_INTROSPECTION := $(BIN)/g-ir-scanner
GRAPHVIZ := $(BIN)/dot
ICONV := $(BIN)/iconv
IMAGEMAGICK := $(BIN)/convert
LIBEVENT := $(LIB)/libevent.a
LIBFFI := $(LIB)/libffi.a
LIBNETTLE := $(LIB)/libnettle.a
LIBPCRE := $(LIB)/libpcre.a
LIBPNG := $(LIB)/libpng.a
LIBTASN1 := $(LIB)/libtasn1.a
LIBTOOL := $(BIN)/libtool
LIBXML := $(LIB)/libxml2.a
MESON := $(OPT)/meson/bin/meson
NINJA := $(NINJA_BIN)/ninja
NODE := $(NODE_BIN)/node
ONIGURUMA := $(LIB)/libonig.a
OPENSSL := $(BIN)/openssl
P11_KIT := $(BIN)/p11-kit
PHP := $(PHP_BIN)/php
PKGCONFIG := $(BIN)/pkg-config
PNGPASTE := $(BIN)/pngpaste
PSTREE := $(BIN)/pstree
PYTHON := $(BIN)/python3
REATTACH_TO_USER_NAMESPACE := $(BIN)/reattach-to-user-namespace
RUBY := $(BIN)/ruby
SBT := $(OPT)/sbt-$(SBT_VERSION)/bin/sbt
SQLITE := $(BIN)/sqlite3
TIG := $(BIN)/tig
TMUX := $(BIN)/tmux
XDEBUG := $(PHP_BIN)/xdebug
XZ := $(BIN)/xz
ZLIB := $(LIB)/libz.a

PKG_CONFIG_PATH := $(LIB)/pkgconfig:$(PKG_CONFIG_PATH)

CONFIGURE := PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) ./configure
CONFIGURE_WITH_PHP_PREFIX := $(CONFIGURE) --prefix=$(PHP_PREFIX)
CONFIGURE_WITH_DEFAULT_PREFIX := $(CONFIGURE) --prefix=$(PREFIX)

.DEFAULT_GOAL := all

.PHONY:\
	all \
	Emacs.app \
	clean \
	tools

tools:\
	$(AUTOCONF) \
	$(AUTOMAKE) \
	$(PKGCONFIG)

all:\
	tools \
	$(AG) \
	$(ANSIBLE) \
	$(AUTOCONF) \
	$(AUTOMAKE) \
	$(BISON) \
	$(CMAKE) \
	$(COREUTILS) \
	$(COURSIER) \
	$(CS) \
	$(CURL) \
	$(DIFF_HIGHLIGHT) \
	$(EMACS) \
	$(GIT) \
	$(GETTEXT) \
	$(GLIBTOOL) \
	$(GLOBAL) \
	$(GNUTLS) \
	$(GOBJECT_INTROSPECTION) \
	$(GRAPHVIZ) \
	$(ICONV) \
	$(IMAGEMAGICK) \
	$(LIBEVENT) \
	$(LIBFFI) \
	$(LIBNETTLE) \
	$(LIBPCRE) \
	$(LIBPNG) \
	$(LIBTASN1) \
	$(LIBTOOL) \
	$(LIBXML) \
	$(MESON) \
	$(NINJA) \
	$(NODE) \
	$(ONIGURUMA) \
	$(OPENSSL) \
	$(P11_KIT) \
	$(PHP) \
	$(PNGPASTE) \
	$(PSTREE) \
	$(PYTHON) \
	$(REATTACH_TO_USER_NAMESPACE) \
	$(RUBY) \
	$(SBT) \
	$(SQLITE) \
	$(TIG) \
	$(TMUX) \
	$(ZLIB)

$(AG): $(LIBPCRE) $(XZ)
	curl -Ls -o ag-$(AG_VERSION).tar.gz \
		https://github.com/ggreer/the_silver_searcher/archive/refs/tags/$(AG_VERSION).tar.gz
	tar xf ag-$(AG_VERSION).tar.gz
	cd the_silver_searcher-$(AG_VERSION) &&\
		./autogen.sh &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(ANSIBLE): $(PYTHON)
	$(PYTHON) -m venv $(OPT)/ansible
	cd $(OPT)/ansible &&\
		source bin/activate &&\
		python3 -m pip install --upgrade pip &&\
		python3 -m pip install ansible

$(AUTOCONF):
	curl -LsO https://ftp.gnu.org/gnu/autoconf/autoconf-$(AUTOCONF_VERSION).tar.gz
	tar xf autoconf-$(AUTOCONF_VERSION).tar.gz
	cd autoconf-$(AUTOCONF_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(AUTOMAKE):
	curl -LsO https://ftp.gnu.org/gnu/automake/automake-$(AUTOMAKE_VERSION).tar.gz
	tar xf automake-$(AUTOMAKE_VERSION).tar.gz
	cd automake-$(AUTOMAKE_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(BISON):
	curl -LsO https://ftp.gnu.org/gnu/bison/bison-$(BISON_VERSION).tar.gz
	tar xf bison-$(BISON_VERSION).tar.gz
	cd bison-$(BISON_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(CMAKE): $(GLIBTOOL)
	curl -LsO https://github.com/Kitware/CMake/releases/download/v$(CMAKE_VERSION)/cmake-$(CMAKE_VERSION).tar.gz
	tar xf cmake-$(CMAKE_VERSION).tar.gz
	cd cmake-$(CMAKE_VERSION) &&\
		./configure --prefix=$(PREFIX) && make && make install

$(COREUTILS):
	curl -LsO https://ftp.gnu.org/gnu/coreutils/coreutils-$(COREUTILS_VERSION).tar.xz
	tar xf coreutils-$(COREUTILS_VERSION).tar.xz
	cd coreutils-$(COREUTILS_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(COURSIER):
	curl -L -o $(COURSIER) https://git.io/coursier-cli
	chmod +x $(COURSIER)

$(CURL): $(OPENSSL)
	curl -LsO https://curl.se/download/curl-$(CURL_VERSION).tar.xz
	tar xf curl-$(CURL_VERSION).tar.xz
	cd curl-$(CURL_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-openssl=$(PREFIX) &&\
		make &&\
		make install

$(CS):
	curl -fLo $(CS) https://git.io/coursier-cli-$(shell uname | tr LD ld)
	chmod +x $(CS)

$(EMACS): $(LIBNETTLE) $(GNUTLS)
	PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) pkg-config --cflags gnutls
	curl -LsO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --without-ns --without-x && make && make install

Emacs.app: $(LIBNETTLE) $(GNUTLS)
	curl -LsO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-ns && make && make install
	mv emacs-$(EMACS_VERSION)/nextstep/Emacs.app .

$(GIT): $(OPENSSL) $(GETTEXT)
	curl -LsO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION) &&\
		 $(CONFIGURE_WITH_DEFAULT_PREFIX) --with-openssl && make && make install

$(DIFF_HIGHLIGHT):
	curl -LsO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION)/contrib/diff-highlight &&\
		make &&\
		mv diff-highlight $(DIFF_HIGHLIGHT) &&\
		chmod +x $(DIFF_HIGHLIGHT)

$(GETTEXT): $(ICONV)
	curl -LsO https://ftp.gnu.org/gnu/gettext/gettext-$(GETTEXT_VERSION).tar.gz &&\
	tar xf gettext-$(GETTEXT_VERSION).tar.gz &&\
	cd gettext-$(GETTEXT_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-libiconv-prefix=$(PREFIX) && make && make install

$(GLOBAL):
	curl -LsO https://ftp.gnu.org/pub/gnu/global/global-$(GLOBAL_VERSION).tar.gz &&\
	tar xf global-$(GLOBAL_VERSION).tar.gz &&\
	cd global-$(GLOBAL_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(GLIBTOOL): $(LIBTOOL)
	ln -snf $(BIN)/libtool $(BIN)/glibtool

$(GNUTLS): $(LIBNETTLE) $(P11_KIT)
	curl -LsO https://www.gnupg.org/ftp/gcrypt/gnutls/v$(GNUTLS_VERSION_MAJOR_MINOR)/gnutls-$(GNUTLS_VERSION).tar.xz
	tar xf gnutls-$(GNUTLS_VERSION).tar.xz
	cd gnutls-$(GNUTLS_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) \
			--with-nettle-mini \
			--with-included-unistring \
			--with-included-libtasn1 &&\
		make &&\
		make install

$(GOBJECT_INTROSPECTION):
	curl -LsO https://download-fallback.gnome.org/sources/gobject-introspection/$(GOBJECT_INTROSPECTION_VERSION_MAJOR_MINOR)/gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	tar xf gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	cd gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION) &&\
		CFLAGS=-I$(INCLUDE) LDFLAGS=-L$(LIB) PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) PATH=$(NINJA_BIN):$(PATH) $(MESON) --prefix=$(PREFIX) --pkg-config-path=$(PKG_CONFIG_PATH) _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install

$(GRAPHVIZ):
	curl -LsO https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/$(GRAPHVIZ_VERSION)/graphviz-$(GRAPHVIZ_VERSION).tar.gz
	tar xf graphviz-$(GRAPHVIZ_VERSION).tar.gz
	cd graphviz-$(GRAPHVIZ_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(ICONV):
	# Use Apple version to support UTF-8-MAC
	# https://github.com/conda-forge/git-feedstock/issues/50
	curl -LsO https://opensource.apple.com/tarballs/libiconv/libiconv-$(ICONV_VERSION).tar.gz
	tar xf libiconv-$(ICONV_VERSION).tar.gz &&\
	cd libiconv-$(ICONV_VERSION)/libiconv &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --enable-static && make && make install

$(IMAGEMAGICK):
	curl -LsO https://download.imagemagick.org/ImageMagick/download/ImageMagick-$(IMAGEMAGICK_VERSION).tar.gz
	tar xf ImageMagick-$(IMAGEMAGICK_VERSION).tar.gz
	cd ImageMagick-$(IMAGEMAGICK_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBEVENT): $(OPENSSL)
	curl -LsO https://github.com/libevent/libevent/releases/download/release-$(LIBEVENT_VERSION)-stable/libevent-$(LIBEVENT_VERSION)-stable.tar.gz
	tar xf libevent-$(LIBEVENT_VERSION)-stable.tar.gz
	cd libevent-$(LIBEVENT_VERSION)-stable &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) &&\
		make &&\
		make install

$(LIBFFI):
	curl -LsO https://github.com/libffi/libffi/releases/download/v$(LIBFFI_VERSION)/libffi-$(LIBFFI_VERSION).tar.gz
	tar xf libffi-$(LIBFFI_VERSION).tar.gz
	cd libffi-$(LIBFFI_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBNETTLE):
	curl -LsO https://ftp.gnu.org/gnu/nettle/nettle-$(LIBNETTLE_VERSION).tar.gz
	tar xf nettle-$(LIBNETTLE_VERSION).tar.gz
	cd nettle-$(LIBNETTLE_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --enable-mini-gmp &&\
		make &&\
		make install

$(LIBTASN1):
	curl -LsO https://ftp.gnu.org/gnu/libtasn1/libtasn1-$(LIBTASN1_VERSION).tar.gz
	tar xf libtasn1-$(LIBTASN1_VERSION).tar.gz
	cd libtasn1-$(LIBTASN1_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBTOOL):
	curl -LsO https://ftp.wayne.edu/gnu/libtool/libtool-$(LIBTOOL_VERSION).tar.gz
	tar xf libtool-$(LIBTOOL_VERSION).tar.gz
	cd libtool-$(LIBTOOL_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBPCRE):
	curl -LsO https://ftp.pcre.org/pub/pcre/pcre-$(LIBPCRE_VERSION).zip
	tar xf pcre-$(LIBPCRE_VERSION).zip
	cd pcre-$(LIBPCRE_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBPNG): $(ZLIB)
	curl -LsO https://download.sourceforge.net/libpng/libpng-$(LIBPNG_VERSION).tar.xz
	tar xf libpng-$(LIBPNG_VERSION).tar.xz
	cd libpng-$(LIBPNG_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(LIBXML):
	curl -LsO http://xmlsoft.org/download/libxml2-$(LIBXML_VERSION).tar.gz &&\
	tar xf libxml2-$(LIBXML_VERSION).tar.gz &&\
	cd libxml2-$(LIBXML_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX)  --without-python && make && make install

$(MESON): $(PYTHON)
	$(PYTHON) -m venv $(OPT)/meson
	cd $(OPT)/meson &&\
		source bin/activate &&\
		python3 -m pip install --upgrade pip &&\
		python3 -m pip install meson

$(NINJA): $(PYTHON)
	$(PYTHON) -m venv $(OPT)/ninja
	cd $(OPT)/ninja &&\
		source bin/activate &&\
		python3 -m pip install --upgrade pip &&\
		python3 -m pip install ninja

$(NODE):
	curl -LsO https://nodejs.org/dist/v$(NODE_VERSION)/node-v$(NODE_VERSION)-darwin-x64.tar.gz
	tar xf node-v$(NODE_VERSION)-darwin-x64.tar.gz
	mv node-v$(NODE_VERSION)-darwin-x64 $(NODE_PREFIX)

$(ONIGURUMA):
	curl -LsO https://github.com/kkos/oniguruma/releases/download/v$(ONIGURUMA_VERSION)/onig-$(ONIGURUMA_VERSION).tar.gz
	tar xf onig-$(ONIGURUMA_VERSION).tar.gz
	cd onig-$(ONIGURUMA_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(OPENSSL):
	curl -LsO http://ftp.openssl.org/source/openssl-$(OPENSSL_VERSION).tar.gz
	tar xf openssl-$(OPENSSL_VERSION).tar.gz
	cd openssl-$(OPENSSL_VERSION) &&\
		./config --prefix=$(PREFIX) &&\
		make &&\
		make install

$(P11_KIT): $(LIBTASN1) $(LIBFFI)
	curl -LsO https://github.com/p11-glue/p11-kit/releases/download/$(P11_KIT_VERSION)/p11-kit-$(P11_KIT_VERSION).tar.xz
	tar xf p11-kit-$(P11_KIT_VERSION).tar.xz
	cd p11-kit-$(P11_KIT_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --without-trust-paths && make && make install

$(PHP):  $(OPENSSL) $(LIBXML) $(ICONV) $(CURL) $(ONIGURUMA) $(ZLIB) $(SQLITE)
	curl -LsO https://www.php.net/distributions/php-$(PHP_VERSION).tar.gz
	tar xf php-$(PHP_VERSION).tar.gz
	cd php-$(PHP_VERSION) &&\
		$(CONFIGURE_WITH_PHP_PREFIX) \
			--enable-mbstring \
			--with-iconv=$(PREFIX) \
			--with-curl \
			--with-openssl \
			--with-pear \
			--with-system-ciphers \
			--with-pdo-mysql=mysqlnd \
			--with-zlib &&\
		make &&\
		make install
	$(PHP_BIN)/pecl install xdebug

$(PKGCONFIG):
	curl -LsO http://pkgconfig.freedesktop.org/releases/pkg-config-$(PKGCONFIG_VERSION).tar.gz
	tar xf pkg-config-$(PKGCONFIG_VERSION).tar.gz
	cd pkg-config-$(PKGCONFIG_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-internal-glib && make && make install

$(PNGPASTE):
	curl -Ls -o pngpaste-$(PNGPASTE_VERSION).tar.gz https://github.com/jcsalterego/pngpaste/archive/refs/tags/$(PNGPASTE_VERSION).tar.gz
	tar xf pngpaste-$(PNGPASTE_VERSION).tar.gz
	cd pngpaste-$(PNGPASTE_VERSION) &&\
		make &&\
		mv pngpaste $(PNGPASTE)

$(PSTREE):
	mkdir -p pstree
	cd pstree &&\
		curl -LsO http://www.thp.uni-duisburg.de/pstree/pstree.tar.gz &&\
		tar xf pstree.tar.gz &&\
		$(CC) -O -o pstree pstree.c &&\
		mv pstree $(PSTREE)

$(PYTHON): $(OPENSSL)
	curl -LsO https://www.python.org/ftp/python/$(PYTHON_VERSION)/Python-$(PYTHON_VERSION).tar.xz
	tar xf Python-$(PYTHON_VERSION).tar.xz
	cd Python-$(PYTHON_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install
	$(PYTHON) -m pip install --upgrade pip

$(REATTACH_TO_USER_NAMESPACE): $(TMUX)
	curl -Ls -o v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz \
		https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/archive/refs/tags/v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	tar xf v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	cd tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION) && \
		make &&\
		mv -f reattach-to-user-namespace $(PREFIX)/bin

$(RUBY): $(OPENSSL)
	curl -LsO https://ftp.ruby-lang.org/pub/ruby/3.0/ruby-$(RUBY_VERSION).tar.xz
	tar xf ruby-$(RUBY_VERSION).tar.xz
	cd ruby-$(RUBY_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(SBT):
	curl -LsO https://github.com/sbt/sbt/releases/download/v$(SBT_VERSION)/sbt-$(SBT_VERSION).tgz
	tar xf sbt-$(SBT_VERSION).tgz
	rm -rf $(OPT)/sbt-$(SBT_VERSION)
	mkdir -p $(OPT) && mv sbt $(OPT)/sbt-$(SBT_VERSION)

$(SQLITE):
	curl -Ls -o sqlite-version-$(SQLITE_VERSION).tar.gz \
		https://github.com/sqlite/sqlite/archive/refs/tags/version-$(SQLITE_VERSION).tar.gz
	tar xf sqlite-version-$(SQLITE_VERSION).tar.gz
	cd sqlite-version-$(SQLITE_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(TIG):
	curl -LsO https://github.com/jonas/tig/releases/download/tig-$(TIG_VERSION)/tig-$(TIG_VERSION).tar.gz
	tar xf tig-$(TIG_VERSION).tar.gz
	cd tig-$(TIG_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(TMUX): $(LIBEVENT)
	curl -Ls -o tmux-$(TMUX_VERSION).tar.gz \
		https://github.com/tmux/tmux/releases/download/$(TMUX_VERSION)/tmux-$(TMUX_VERSION).tar.gz
	tar xf tmux-$(TMUX_VERSION).tar.gz
	cd tmux-$(TMUX_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(XZ):
	curl -LsO https://tukaani.org/xz/xz-$(XZ_VERSION).tar.gz
	tar xf xz-$(XZ_VERSION).tar.gz
	cd xz-$(XZ_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(ZLIB):
	curl -LO https://zlib.net/zlib-$(ZLIB_VERSION).tar.xz
	tar xf zlib-$(ZLIB_VERSION).tar.xz
	cd zlib-$(ZLIB_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

clean:
	rm -f ag-$(AG_VERSION).tar.gz
	rm -rf the_silver_searcher-$(AG_VERSION)

	rm -f autoconf-$(AUTOCONF_VERSION).tar.gz
	rm -rf autoconf-$(AUTOCONF_VERSION)

	rm -f automake-$(AUTOMAKE_VERSION).tar.gz
	rm -rf automake-$(AUTOMAKE_VERSION)

	rm -f bison-$(BISON_VERSION).tar.gz
	rm -rf bison-$(BISON_VERSION)

	rm -f cmake-$(CMAKE_VERSION).tar.gz
	rm -rf cmake-$(CMAKE_VERSION)

	rm -f coreutils-$(COREUTILS_VERSION).tar.xz
	rm -rf coreutils-$(COREUTILS_VERSION)

	rm -f curl-$(CURL_VERSION).tar.xz
	rm -rf curl-$(CURL_VERSION)

	rm -f emacs-$(EMACS_VERSION).tar.xz
	rm -rf emacs-$(EMACS_VERSION)

	rm -f git-$(GIT_VERSION).tar.gz
	rm -rf git-$(GIT_VERSION)

	rm -f global-$(GLOBAL_VERSION).tar.gz
	rm -rf global-$(GLOBAL_VERSION)

	rm -f gettext-$(GETTEXT_VERSION).tar.gz
	rm -rf gettext-$(GETTEXT_VERSION)

	rm -f gnutls-$(GNUTLS_VERSION).tar.xz
	rm -rf gnutls-$(GNUTLS_VERSION)

	rm -f gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	rm -rf gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION)

	rm -f graphviz-$(GRAPHVIZ_VERSION).tar.gz
	rm -rf graphviz-$(GRAPHVIZ_VERSION)

	rm -f ImageMagick-$(IMAGEMAGICK_VERSION).tar.gz
	rm -rf ImageMagick-$(IMAGEMAGICK_VERSION)

	rm -f libiconv-$(ICONV_VERSION).tar.gz
	rm -rf libiconv-$(ICONV_VERSION)

	rm -rf libevent-$(LIBEVENT_VERSION)-stable
	rm -f libevent-$(LIBEVENT_VERSION)-stable.tar.gz

	rm -rf libffi-$(LIBFFI_VERSION)
	rm -f libffi-$(LIBFFI_VERSION).tar.gz

	rm -f nettle-$(LIBNETTLE_VERSION).tar.gz
	rm -rf nettle-$(LIBNETTLE_VERSION)

	rm -f libtasn1-$(LIBTASN1_VERSION).tar.gz
	rm -rf libtasn1-$(LIBTASN1_VERSION)

	rm -f libtool-$(LIBTOOL_VERSION).tar.gz
	rm -rf libtool-$(LIBTOOL_VERSION)

	rm -f pcre-$(LIBPCRE_VERSION).zip
	rm -rf pcre-$(LIBPCRE_VERSION)

	rm -f pkg-config-$(PKGCONFIG_VERSION).tar.gz
	rm -rf pkg-config-$(PKGCONFIG_VERSION)

	rm -f libpng-$(LIBPNG_VERSION).tar.xz
	rm -rf libpng-$(LIBPNG_VERSION)

	rm -f libxml2-$(LIBXML_VERSION).tar.gz
	rm -rf libxml2-$(LIBXML_VERSION)

	rm -f node-v$(NODE_VERSION)-darwin-x64.tar.gz
	rm -rf node-v$(NODE_VERSION)-darwin-x64

	rm -f onig-$(ONIGURUMA_VERSION).tar.gz
	rm -rf onig-$(ONIGURUMA_VERSION)

	rm -f openssl-$(OPENSSL_VERSION).tar.gz
	rm -rf openssl-$(OPENSSL_VERSION)

	rm -f p11-kit-$(P11_KIT_VERSION).tar.xz
	rm -rf p11-kit-$(P11_KIT_VERSION)

	rm -f php-$(PHP_VERSION).tar.gz
	rm -rf php-$(PHP_VERSION)

	rm -f pngpaste-$(PNGPASTE_VERSION).tar.gz
	rm -rf pngpaste-$(PNGPASTE_VERSION)

	rm -rf pstree

	rm -f Python-$(PYTHON_VERSION).tar.xz
	rm -rf Python-$(PYTHON_VERSION)

	rm -f ruby-$(RUBY_VERSION).tar.xz
	rm -rf ruby-$(RUBY_VERSION)

	rm -f sbt-$(SBT_VERSION).tgz

	rm -f sqlite-version-$(SQLITE_VERSION).tar.gz
	rm -rf sqlite-version-$(SQLITE_VERSION)

	rm -rf tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION)
	rm -f v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz

	rm -f tig-$(TIG_VERSION).tar.gz
	rm -rf tig-$(TIG_VERSION)

	rm -f tmux-$(TMUX_VERSION).tar.gz
	rm -rf tmux-$(TMUX_VERSION)

	rm -f xz-$(XZ_VERSION).tar.gz
	rm -rf xz-$(XZ_VERSION)

	rm -f zlib-$(ZLIB_VERSION).tar.xz
	rm -rf zlib-$(ZLIB_VERSION)
