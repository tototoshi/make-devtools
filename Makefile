PREFIX := $(HOME)/.pkgs

PACKAGE_INFO := $(PREFIX)/package-info

BIN := $(PREFIX)/bin
LIB := $(PREFIX)/lib
OPT := $(PREFIX)/opt

AG_VERSION := 2.2.0
AUTOCONF_VERSION := 2.71
AUTOMAKE_VERSION := 1.16.4
BISON_VERSION := 3.7.6
CAIRO_VERSION := 1.17.6
CAIRO_VERSION_MAJOR_MINOR := 1.17
CMAKE_VERSION := 3.21.1
COREUTILS_VERSION := 8.32
CURL_VERSION := 7.83.0
EMACS_VERSION := 28.1
FONTCONFIG_VERSION := 2.14.0
FREETYPE_VERSION := 2.12.1
FRIBIDI_VERSION := 1.0.11
GDK_PIXBUF_VERSION := 2.42.6
GDK_PIXBUF_VERSION_MAJOR_MINOR := 2.42
GETTEXT_VERSION := 0.21
GIT_VERSION := 2.36.1
GLIB_VERSION := 2.72.1
GLIB_VERSION_MAJOR_MINOR := 2.72
GLOBAL_VERSION := 6.6.8
GNUICONV_VERSION := 1.16
GNUTLS_VERSION := 3.6.15
GNUTLS_VERSION_MAJOR_MINOR := 3.6
GOBJECT_INTROSPECTION_VERSION := 1.72.0
GOBJECT_INTROSPECTION_VERSION_MAJOR_MINOR := 1.72
GRAPHVIZ_VERSION := 2.48.0
HARFBUZZ_VERSION := 4.2.1
ICONV_VERSION := 59
IMAGEMAGICK_VERSION := 7.1.0-33
JANSSON_VERSION := 2.14
LIBEVENT_VERSION := 2.1.12
LIBFFI_VERSION := 3.3
LIBNETTLE_VERSION := 3.7.2
LIBPCRE_VERSION := 8.45
LIBPNG_VERSION := 1.6.37
LIBRSVG_VERSION := 2.52.0
LIBRSVG_VERSION_MAJOR_MINOR := 2.52
LIBTASN1_VERSION := 4.16.0
LIBTOOL_VERSION := 2.4.6
LIBXML_VERSION := 2.9.10
LIBZIP_VERSION := 1.8.0
MAVEN_VERSION := 3.8.5
NCURSES_VERSION := 6.3
NODE_VERSION := 16.14.0
ONIGURUMA_VERSION := 6.9.6
OPENSSL_VERSION := 1.1.1k
P11_KIT_VERSION := 0.23.22
PANGO_VERSION := 1.50.7
PANGO_VERSION_MAJOR_MINOR := 1.50
PIXMAN_VERSION := 0.40.0
PHP_VERSION := 8.0.18
PHP_8_1_VERSION := 8.1.6
PNGPASTE_VERSION := 0.2.3
PKGCONFIG_VERSION := 0.29.2
PYTHON_VERSION := 3.10.4
REATTACH_TO_USER_NAMESPACE_VERSION := 2.9
READLINE_VERSION := 8.1.2
RUBY_VERSION := 3.1.2
RUBY_VERSION_MAJOR_MINOR := 3.1
SBT_VERSION := 1.6.2
SQLITE_VERSION := 3.36.0
TIG_VERSION := 2.5.3
TMUX_VERSION := 3.2a
XZ_VERSION := 5.2.5
ZLIB_VERSION := 1.2.12

EMACS_PREFIX := $(OPT)/emacs-$(EMACS_VERSION)
EMACS_BIN := $(EMACS_PREFIX)/bin
GIT_PREFIX := $(OPT)/git-$(GIT_VERSION)
GIT_BIN := $(GIT_PREFIX)/bin
GNUICONV_PREFIX := $(OPT)/gnuiconv
GNUICONV_BIN := $(GNUICONV_PREFIX)/bin
ICONV_PREFIX := $(OPT)/iconv
ICONV_BIN := $(ICONV_PREFIX)/bin
PHP_PREFIX := $(OPT)/php-$(PHP_VERSION)
PHP_BIN := $(PHP_PREFIX)/bin
PHP_8_1_PREFIX := $(OPT)/php-$(PHP_8_1_VERSION)
PHP_8_1_BIN := $(PHP_8_1_PREFIX)/bin
PYTHON_PREFIX := $(OPT)/python-$(PYTHON_VERSION)
RUBY_PREFIX := $(OPT)/ruby-$(RUBY_VERSION)
MAVEN_PREFIX := $(OPT)/maven-$(MAVEN_VERSION)
NINJA_BIN := $(OPT)/ninja/bin
NODE_PREFIX := $(OPT)/node-$(NODE_VERSION)
NODE_BIN := $(NODE_PREFIX)/bin

AG := $(BIN)/ag
ANSIBLE := $(PYTHON_PREFIX)/bin/ansible
AUTOCONF := $(BIN)/autoconf
AUTOMAKE := $(BIN)/automake
BISON := $(BIN)/bison
CACERT_PEM := $(PREFIX)/ssl/cacert.pem
CAIRO := $(BIN)/cairo-trace
CMAKE := $(BIN)/cmake
COREUTILS := $(BIN)/cat
COURSIER := $(BIN)/coursier
CS := $(BIN)/cs
CURL := $(BIN)/curl
DIFF_HIGHLIGHT := $(BIN)/diff-highlight
EMACS := $(EMACS_BIN)/emacs
FRIBIDI := $(LIB)/libfribidi.dylib
FONTCONFIG := $(BIN)/fc-list
FREETYPE := $(PACKAGE_INFO)/freetype
FREETYPE_WITH_HARFBUZZ := $(PACKAGE_INFO)/freetype_with_harfbuzz
GDK_PIXBUF := $(LIB)/libgdk_pixbuf-2.0.dylib
GIT := $(GIT_BIN)/git
GETTEXT := $(BIN)/gettext
GLIB := $(LIB)/libglib-2.0.dylib
GLIBTOOL := $(BIN)/glibtool
GLOBAL := $(BIN)/global
GNUICONV := $(GNUICONV_BIN)/iconv
GNUTLS := $(BIN)/gnutls-cli
GOBJECT_INTROSPECTION := $(BIN)/g-ir-inspect
GRAPHVIZ := $(BIN)/dot
HARFBUZZ := $(PACKAGE_INFO)/harfbuzz
ICONV := $(ICONV_BIN)/iconv
IMAGEMAGICK := $(BIN)/convert
JANSSON := $(LIB)/libjansson.a
LIBEVENT := $(LIB)/libevent.a
LIBFFI := $(LIB)/libffi.a
LIBNETTLE := $(LIB)/libnettle.a
LIBPCRE := $(LIB)/libpcre.a
LIBPNG := $(LIB)/libpng.a
LIBRSVG := $(LIB)/librsvg-2.a
LIBTASN1 := $(LIB)/libtasn1.a
LIBTOOL := $(BIN)/libtool
LIBXML := $(LIB)/libxml2.a
LIBZIP := $(LIB)/libzip.dylib
MAVEN := $(MAVEN_PREFIX)/bin/mvn
MESON := $(PYTHON_PREFIX)/bin/meson
NCURSES := $(LIB)/libncurses.a
NINJA := $(PYTHON_PREFIX)/bin/ninja
NODE := $(NODE_BIN)/node
ONIGURUMA := $(LIB)/libonig.a
OPENSSL := $(BIN)/openssl
PANGO := $(BIN)/pango-view
P11_KIT := $(BIN)/p11-kit
PHP := $(PHP_BIN)/php
PHP_8_1 := $(PHP_8_1_BIN)/php
PIXMAN := $(LIB)/libpixman-1.a
PKGCONFIG := $(BIN)/pkg-config
PNGPASTE := $(BIN)/pngpaste
PYTHON := $(PYTHON_PREFIX)/bin/python3
PIP := $(PYTHON_PREFIX)/bin/pip3
READLINE := $(LIB)/libreadline.a
REATTACH_TO_USER_NAMESPACE := $(BIN)/reattach-to-user-namespace
RUBY := $(RUBY_PREFIX)/bin/ruby
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
CONFIGURE_WITH_EMACS_PREFIX := $(CONFIGURE) --prefix=$(EMACS_PREFIX)
CONFIGURE_WITH_DEFAULT_PREFIX := $(CONFIGURE) --prefix=$(PREFIX)

PIP_INSTALL := $(PYTHON) -m pip install --upgrade pip && $(PYTHON) -m pip install --upgrade --force-reinstall

.DEFAULT_GOAL := all

.PHONY:\
	$(PACKAGE_INFO) \
	all \
	Emacs.app \
	clean \
	tools

$(PACKAGE_INFO):
	mkdir -p $(PACKAGE_INFO)

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
	$(CACERT_PEM) \
	$(CMAKE) \
	$(COREUTILS) \
	$(COURSIER) \
	$(CS) \
	$(CURL) \
	$(DIFF_HIGHLIGHT) \
	$(EMACS) \
	$(GIT) \
	$(GLIBTOOL) \
	$(GLOBAL) \
	$(GOBJECT_INTROSPECTION) \
	$(GRAPHVIZ) \
	$(HARFBUZZ) \
	$(ICONV) \
	$(IMAGEMAGICK) \
	$(MAVEN) \
	$(NODE) \
	$(PHP) \
	$(PHP_8_1) \
	$(PNGPASTE) \
	$(PYLSP) \
	$(PYTHON) \
	$(REATTACH_TO_USER_NAMESPACE) \
	$(RUBY) \
	$(SBT) \
	$(SQLITE) \
	$(TIG) \
	$(TMUX)

$(AG): $(LIBPCRE) $(XZ)
	curl -Ls -o ag-$(AG_VERSION).tar.gz \
		https://github.com/ggreer/the_silver_searcher/archive/refs/tags/$(AG_VERSION).tar.gz
	tar xf ag-$(AG_VERSION).tar.gz
	cd the_silver_searcher-$(AG_VERSION) &&\
		./autogen.sh &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(ANSIBLE): $(PYTHON)
	$(PIP_INSTALL) ansible

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

$(CACERT_PEM): $(CURL)
	cd $(PREFIX)/ssl &&\
	$(CURL) -v --etag-compare etag.txt \
		--etag-save etag.txt \
		--remote-name https://curl.se/ca/cacert.pem

$(CAIRO): $(FREETYPE) $(LIBPNG) $(PIXMAN)
	curl -LsO https://download.gnome.org/sources/cairo/$(CAIRO_VERSION_MAJOR_MINOR)/cairo-$(CAIRO_VERSION).tar.xz
	tar xf cairo-$(CAIRO_VERSION).tar.xz
	cd cairo-$(CAIRO_VERSION) &&\
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

$(EMACS): $(JANSSON) $(LIBRSVG) $(IMAGEMAGICK) $(LIBXML) $(LIBNETTLE) $(GNUTLS)
	curl -LO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
		$(CONFIGURE_WITH_EMACS_PREFIX) --without-ns --without-x && make && make install

$(JANSSON):
	curl -LO https://github.com/akheron/jansson/releases/download/v$(JANSSON_VERSION)/jansson-$(JANSSON_VERSION).tar.gz
	tar xf jansson-$(JANSSON_VERSION).tar.gz
	cd jansson-$(JANSSON_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

Emacs.app: $(JANSSON) $(LIBRSVG) $(IMAGEMAGICK) $(LIBXML) $(LIBNETTLE) $(GNUTLS)
	curl -LO https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz
	tar xf emacs-$(EMACS_VERSION).tar.xz
	cd emacs-$(EMACS_VERSION) &&\
		CFLAGS="-O2" $(CONFIGURE_WITH_EMACS_PREFIX) --with-ns --with-json && make && make install
	mv emacs-$(EMACS_VERSION)/nextstep/Emacs.app .

$(FONTCONFIG):
	curl -LO https://www.freedesktop.org/software/fontconfig/release/fontconfig-$(FONTCONFIG_VERSION).tar.xz
	tar xf fontconfig-$(FONTCONFIG_VERSION).tar.xz
	cd fontconfig-$(FONTCONFIG_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(FREETYPE): $(FONTCONFIG) $(NINJA) $(MESON)
	curl -LO https://download.savannah.gnu.org/releases/freetype/freetype-$(FREETYPE_VERSION).tar.xz
	tar xf freetype-$(FREETYPE_VERSION).tar.xz
	cd freetype-$(FREETYPE_VERSION) &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			PATH=$(NINJA_BIN):$(PATH) \
			$(MESON) --prefix=$(PREFIX) _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install
	touch $(FREETYPE)

$(FREETYPE_WITH_HARFBUZZ): $(FREETYPE) $(HARFBUZZ)
	curl -LO https://download.savannah.gnu.org/releases/freetype/freetype-$(FREETYPE_VERSION).tar.xz
	tar xf freetype-$(FREETYPE_VERSION).tar.xz
	cd freetype-$(FREETYPE_VERSION) &&\
		rm -rf _build &&\
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			PATH=$(NINJA_BIN):$(PATH) \
			$(MESON) --prefix=$(PREFIX) _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install
	touch $(FREETYPE_WITH_HARFBUZZ)

$(FRIBIDI):
	curl -LO https://github.com/fribidi/fribidi/releases/download/v$(FRIBIDI_VERSION)/fribidi-$(FRIBIDI_VERSION).tar.xz
	tar xf fribidi-$(FRIBIDI_VERSION).tar.xz
	cd fribidi-$(FRIBIDI_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(GIT): $(OPENSSL) $(GETTEXT) $(ICONV)
	curl -LsO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION) &&\
		LDFLAGS=-L$(ICONV_PREFIX)/lib $(CONFIGURE) \
			--prefix=$(GIT_PREFIX) \
			--with-openssl \
			--with-iconv=$(ICONV_PREFIX) && \
		make && \
		make install

$(DIFF_HIGHLIGHT):
	curl -LsO https://www.kernel.org/pub/software/scm/git/git-$(GIT_VERSION).tar.gz &&\
	tar xf git-$(GIT_VERSION).tar.gz &&\
	cd git-$(GIT_VERSION)/contrib/diff-highlight &&\
		make &&\
		mv diff-highlight $(DIFF_HIGHLIGHT) &&\
		chmod +x $(DIFF_HIGHLIGHT)

$(GDK_PIXBUF): $(GLIB) $(GETTEXT) $(MESON) $(NINJA)
	curl -LsO https://download.gnome.org/sources/gdk-pixbuf/$(GDK_PIXBUF_VERSION_MAJOR_MINOR)/gdk-pixbuf-$(GDK_PIXBUF_VERSION).tar.xz
	tar xf gdk-pixbuf-$(GDK_PIXBUF_VERSION).tar.xz
	cd gdk-pixbuf-$(GDK_PIXBUF_VERSION) &&\
		CFLAGS="-I$(PREFIX)/include" \
		LDFLAGS="-L$(PREFIX)/lib" \
			PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			PATH=$(NINJA_BIN):$(PATH) \
			$(MESON) --prefix=$(PREFIX) -Dgtk_doc=false -Ddocs=false -Dman=false _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install

$(GETTEXT): $(ICONV) $(PKGCONFIG)
	curl -LO https://ftp.gnu.org/gnu/gettext/gettext-$(GETTEXT_VERSION).tar.gz &&\
	tar xf gettext-$(GETTEXT_VERSION).tar.gz
	cd gettext-$(GETTEXT_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-libiconv-prefix=$(ICONV_PREFIX) && make && make install

$(GLOBAL):
	curl -LsO https://ftp.gnu.org/pub/gnu/global/global-$(GLOBAL_VERSION).tar.gz &&\
	tar xf global-$(GLOBAL_VERSION).tar.gz &&\
	cd global-$(GLOBAL_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(GLIB): $(PKGCONFIG) $(NINJA) $(MESON)
	curl -LO https://download.gnome.org/sources/glib/$(GLIB_VERSION_MAJOR_MINOR)/glib-$(GLIB_VERSION).tar.xz
	tar xf glib-$(GLIB_VERSION).tar.xz
	cd glib-$(GLIB_VERSION) &&\
		CFLAGS="-I$(PREFIX)/include" \
		LDFLAGS="-L$(PREFIX)/lib" \
		PATH=$(NINJA_BIN):$(PATH) \
			$(MESON) --prefix=$(PREFIX) _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install

$(GLIBTOOL): $(LIBTOOL)
	ln -snf $(BIN)/libtool $(BIN)/glibtool

$(GNUICONV):
	curl -LsO https://ftp.gnu.org/pub/gnu/libiconv/libiconv-$(GNUICONV_VERSION).tar.gz
	tar xf libiconv-$(GNUICONV_VERSION).tar.gz
	cd libiconv-$(GNUICONV_VERSION) &&\
		$(CONFIGURE) --prefix=$(GNUICONV_PREFIX) --enable-static && make && make install

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

$(GOBJECT_INTROSPECTION):  $(MESON) $(NINJA) $(GNUICONV) $(LIBPCRE)
	curl -LsO https://download-fallback.gnome.org/sources/gobject-introspection/$(GOBJECT_INTROSPECTION_VERSION_MAJOR_MINOR)/gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	tar xf gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	cd gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION) &&\
		CFLAGS=-I$(GNUICONV_PREFIX)/include \
			LDFLAGS=-L$(GNUICONV_PREFIX)/lib \
			PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) \
			PATH=$(NINJA_BIN):$(PATH) \
			$(MESON) \
			--prefix=$(PREFIX) -Dpython=$(PYTHON) _build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install

$(GRAPHVIZ):
	curl -LsO https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/$(GRAPHVIZ_VERSION)/graphviz-$(GRAPHVIZ_VERSION).tar.gz
	tar xf graphviz-$(GRAPHVIZ_VERSION).tar.gz
	cd graphviz-$(GRAPHVIZ_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

$(HARFBUZZ): $(FREETYPE)
	curl -LsO https://github.com/harfbuzz/harfbuzz/releases/download/$(HARFBUZZ_VERSION)/harfbuzz-$(HARFBUZZ_VERSION).tar.xz
	tar xf harfbuzz-$(HARFBUZZ_VERSION).tar.xz
	cd harfbuzz-$(HARFBUZZ_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-coretext=yes && make && make install
	touch $(HARFBUZZ)

$(ICONV):
	# Use Apple version to support UTF-8-MAC
	# https://github.com/conda-forge/git-feedstock/issues/50
	curl -LsO https://opensource.apple.com/tarballs/libiconv/libiconv-$(ICONV_VERSION).tar.gz
	tar xf libiconv-$(ICONV_VERSION).tar.gz &&\
	cd libiconv-$(ICONV_VERSION)/libiconv &&\
		$(CONFIGURE) --prefix=$(ICONV_PREFIX) --enable-static && make && make install

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

$(LIBRSVG): $(PANGO) $(GDK_PIXBUF)
	curl -LsO https://download.gnome.org/sources/librsvg/$(LIBRSVG_VERSION_MAJOR_MINOR)/librsvg-$(LIBRSVG_VERSION).tar.xz
	tar xf librsvg-$(LIBRSVG_VERSION).tar.xz
	cd librsvg-$(LIBRSVG_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) &&\
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
	curl -Ls -o pcre-$(LIBPCRE_VERSION).zip https://sourceforge.net/projects/pcre/files/pcre/8.45/pcre-8.45.zip/download
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
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --without-python && make && make install

$(LIBZIP):
	curl -LO https://libzip.org/download/libzip-$(LIBZIP_VERSION).tar.gz
	tar xf libzip-$(LIBZIP_VERSION).tar.gz
	cd libzip-$(LIBZIP_VERSION) &&\
		mkdir -p build &&\
		cd build &&\
			$(CMAKE) -DCMAKE_INSTALL_PREFIX=$(PREFIX) .. && make && make install

$(MAVEN):
	curl -LO https://dlcdn.apache.org/maven/maven-3/$(MAVEN_VERSION)/binaries/apache-maven-$(MAVEN_VERSION)-bin.tar.gz
	tar xf apache-maven-$(MAVEN_VERSION)-bin.tar.gz
	if [ ! -d $(MAVEN_PREFIX) ]; then \
		mv apache-maven-$(MAVEN_VERSION) $(MAVEN_PREFIX); \
	fi

$(MESON): $(PYTHON)
	$(PIP_INSTALL) meson

$(NCURSES):
	curl -LO https://ftp.gnu.org/pub/gnu/ncurses/ncurses-$(NCURSES_VERSION).tar.gz
	tar xf ncurses-$(NCURSES_VERSION).tar.gz
	cd ncurses-$(NCURSES_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --enable-pc-files && make && make install

$(NINJA): $(PYTHON)
	$(PIP_INSTALL) ninja

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

$(PANGO): $(FREETYPE_WITH_HARFBUZZ) $(FRIBIDI) $(CAIRO) $(GOBJECT_INTROSPECTION) $(MESON) $(NINJA)
	curl -LsO https://download.gnome.org/sources/pango/$(PANGO_VERSION_MAJOR_MINOR)/pango-$(PANGO_VERSION).tar.xz
	tar xf pango-$(PANGO_VERSION).tar.xz
	cd pango-$(PANGO_VERSION) &&\
		rm -rf _build &&\
		LDFLAGS=-L$(PREFIX)/lib \
		PKG_CONFIG_PATH=$(PKG_CONFIG_PATH) PATH=$(NINJA_BIN):$(PATH) $(MESON) \
			--prefix=$(PREFIX) \
			-Dcpp_std=c++11 \
			-Dc_std=c11 \
			_build &&\
		$(NINJA) -C _build &&\
		$(NINJA) -C _build install

$(P11_KIT): $(LIBTASN1) $(LIBFFI)
	curl -LsO https://github.com/p11-glue/p11-kit/releases/download/$(P11_KIT_VERSION)/p11-kit-$(P11_KIT_VERSION).tar.xz
	tar xf p11-kit-$(P11_KIT_VERSION).tar.xz
	cd p11-kit-$(P11_KIT_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --without-trust-paths && make && make install

$(PHP): $(READLINE) $(LIBZIP) $(OPENSSL) $(LIBXML) $(ICONV) $(CURL) $(ONIGURUMA) $(ZLIB) $(SQLITE)
	curl -LO https://www.php.net/distributions/php-$(PHP_VERSION).tar.gz
	tar xf php-$(PHP_VERSION).tar.gz
	cd php-$(PHP_VERSION) &&\
		$(CONFIGURE) \
			--prefix=$(PHP_PREFIX) \
			--enable-mbstring \
			--enable-pcntl \
			--with-iconv=$(ICONV_PREFIX) \
			--with-curl \
			--with-openssl \
			--with-pear \
			--with-system-ciphers \
			--with-pdo-mysql=mysqlnd \
			--with-readline=$(PREFIX) \
			--with-zip \
			--with-zlib &&\
		make &&\
		make install

$(PHP_8_1): $(READLINE) $(LIBZIP) $(OPENSSL) $(LIBXML) $(ICONV) $(CURL) $(ONIGURUMA) $(ZLIB) $(SQLITE)
	curl -LsO https://www.php.net/distributions/php-$(PHP_8_1_VERSION).tar.gz
	tar xf php-$(PHP_8_1_VERSION).tar.gz
	cd php-$(PHP_8_1_VERSION) &&\
		$(CONFIGURE) \
			--prefix=$(PHP_8_1_PREFIX) \
			--enable-mbstring \
			--enable-pcntl \
			--with-iconv=$(ICONV_PREFIX) \
			--with-curl \
			--with-openssl \
			--with-pear \
			--with-system-ciphers \
			--with-pdo-mysql=mysqlnd \
			--with-readline=$(PREFIX) \
			--with-zip \
			--with-zlib &&\
		make &&\
		make install

$(PIXMAN):
	curl -LsO https://www.cairographics.org/releases/pixman-$(PIXMAN_VERSION).tar.gz
	tar xf pixman-$(PIXMAN_VERSION).tar.gz
	cd pixman-$(PIXMAN_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) && make && make install

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

$(PYLSP): $(PYTHON)
	$(PIP_INSTALL) 'python-lsp-server[all]'

$(PYTHON): $(OPENSSL)
	curl -LsO https://www.python.org/ftp/python/$(PYTHON_VERSION)/Python-$(PYTHON_VERSION).tar.xz
	tar xf Python-$(PYTHON_VERSION).tar.xz
	cd Python-$(PYTHON_VERSION) &&\
		$(CONFIGURE) --prefix=$(PYTHON_PREFIX) && make && make install
	$(PYTHON) -m pip install --upgrade pip

$(REATTACH_TO_USER_NAMESPACE): $(TMUX)
	curl -Ls -o v${REATTACH_TO_USER_NAMESPACE_VERSION}.tar.gz \
		https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard/archive/refs/tags/v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	tar xf v$(REATTACH_TO_USER_NAMESPACE_VERSION).tar.gz
	cd tmux-MacOSX-pasteboard-$(REATTACH_TO_USER_NAMESPACE_VERSION) && \
		make &&\
		mv -f reattach-to-user-namespace $(PREFIX)/bin

$(READLINE): $(NCURSES)
	curl -LO https://ftp.gnu.org/gnu/readline/readline-$(READLINE_VERSION).tar.gz
	tar xf readline-$(READLINE_VERSION).tar.gz
	cd readline-$(READLINE_VERSION) &&\
		$(CONFIGURE_WITH_DEFAULT_PREFIX) --with-curses && make && make install

$(RUBY): $(OPENSSL)
	curl -LsO https://ftp.ruby-lang.org/pub/ruby/$(RUBY_VERSION_MAJOR_MINOR)/ruby-$(RUBY_VERSION).tar.xz
	tar xf ruby-$(RUBY_VERSION).tar.xz
	cd ruby-$(RUBY_VERSION) &&\
		$(CONFIGURE) --prefix=$(RUBY_PREFIX) && make && make install

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

	rm -f apache-maven-$(MAVEN_VERSION)-bin.tar.gz

	rm -f autoconf-$(AUTOCONF_VERSION).tar.gz
	rm -rf autoconf-$(AUTOCONF_VERSION)

	rm -f automake-$(AUTOMAKE_VERSION).tar.gz
	rm -rf automake-$(AUTOMAKE_VERSION)

	rm -f bison-$(BISON_VERSION).tar.gz
	rm -rf bison-$(BISON_VERSION)

	rm -f cairo-$(CAIRO_VERSION).tar.xz
	rm -rf cairo-$(CAIRO_VERSION)

	rm -f cmake-$(CMAKE_VERSION).tar.gz
	rm -rf cmake-$(CMAKE_VERSION)

	rm -f coreutils-$(COREUTILS_VERSION).tar.xz
	rm -rf coreutils-$(COREUTILS_VERSION)

	rm -f curl-$(CURL_VERSION).tar.xz
	rm -rf curl-$(CURL_VERSION)

	rm -f emacs-$(EMACS_VERSION).tar.xz
	rm -rf emacs-$(EMACS_VERSION)

	rm -f fontconfig-$(FONTCONFIG_VERSION).tar.xz
	rm -rf fontconfig-$(FONTCONFIG_VERSION)

	rm -f freetype-$(FREETYPE_VERSION).tar.xz
	rm -rf freetype-$(FREETYPE_VERSION)

	rm -f git-$(GIT_VERSION).tar.gz
	rm -rf git-$(GIT_VERSION)

	rm -f glib-$(GLIB_VERSION).tar.xz
	rm -rf glib-$(GLIB_VERSION)

	rm -f global-$(GLOBAL_VERSION).tar.gz
	rm -rf global-$(GLOBAL_VERSION)

	rm -f gdk-pixbuf-$(GDK_PIXBUF_VERSION).tar.xz
	rm -rf gdk-pixbuf-$(GDK_PIXBUF_VERSION)

	rm -f gettext-$(GETTEXT_VERSION).tar.gz
	rm -rf gettext-$(GETTEXT_VERSION)

	rm -f gnutls-$(GNUTLS_VERSION).tar.xz
	rm -rf gnutls-$(GNUTLS_VERSION)

	rm -f gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION).tar.xz
	rm -rf gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION)

	rm -f graphviz-$(GRAPHVIZ_VERSION).tar.gz
	rm -rf graphviz-$(GRAPHVIZ_VERSION)

	rm -f harfbuzz-$(HARFBUZZ_VERSION).tar.xz
	rm -rf harfbuzz-$(HARFBUZZ_VERSION)

	rm -f ImageMagick-$(IMAGEMAGICK_VERSION).tar.gz
	rm -rf ImageMagick-$(IMAGEMAGICK_VERSION)

	rm -f jansson-$(JANSSON_VERSION).tar.gz
	rm -rf jansson-$(JANSSON_VERSION)

	rm -f libiconv-$(GNUICONV_VERSION).tar.gz
	rm -rf libiconv-$(GNUICONV_VERSION)

	rm -f libiconv-$(ICONV_VERSION).tar.gz
	rm -rf libiconv-$(ICONV_VERSION)

	rm -rf libevent-$(LIBEVENT_VERSION)-stable
	rm -f libevent-$(LIBEVENT_VERSION)-stable.tar.gz

	rm -rf libffi-$(LIBFFI_VERSION)
	rm -f libffi-$(LIBFFI_VERSION).tar.gz

	rm -f nettle-$(LIBNETTLE_VERSION).tar.gz
	rm -rf nettle-$(LIBNETTLE_VERSION)

	rm -f librsvg-$(LIBRSVG_VERSION).tar.xz
	rm -rf librsvg-$(LIBRSVG_VERSION)

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

	rm -f libzip-$(LIBZIP_VERSION).tar.gz
	rm -rf libzip-$(LIBZIP_VERSION)

	rm -f ncurses-$(NCURSES_VERSION).tar.gz
	rm -rf ncurses-$(NCURSES_VERSION)

	rm -f node-v$(NODE_VERSION)-darwin-x64.tar.gz
	rm -rf node-v$(NODE_VERSION)-darwin-x64

	rm -f onig-$(ONIGURUMA_VERSION).tar.gz
	rm -rf onig-$(ONIGURUMA_VERSION)

	rm -f openssl-$(OPENSSL_VERSION).tar.gz
	rm -rf openssl-$(OPENSSL_VERSION)

	rm -f p11-kit-$(P11_KIT_VERSION).tar.xz
	rm -rf p11-kit-$(P11_KIT_VERSION)

	rm -f pango-$(PANGO_VERSION).tar.xz
	rm -rf pango-$(PANGO_VERSION)

	rm -f php-$(PHP_VERSION).tar.gz
	rm -rf php-$(PHP_VERSION)

	rm -f php-$(PHP_8_1_VERSION).tar.gz
	rm -rf php-$(PHP_8_1_VERSION)

	rm -f pixman-$(PIXMAN_VERSION).tar.gz
	rm -rf pixman-$(PIXMAN_VERSION)

	rm -f pngpaste-$(PNGPASTE_VERSION).tar.gz
	rm -rf pngpaste-$(PNGPASTE_VERSION)

	rm -f Python-$(PYTHON_VERSION).tar.xz
	rm -rf Python-$(PYTHON_VERSION)

	rm -f readline-$(READLINE_VERSION).tar.gz
	rm -rf readline-$(READLINE_VERSION)

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
