TERMUX_PKG_HOMEPAGE=https://sites.google.com/site/gogdownloader/
TERMUX_PKG_DESCRIPTION="Open source downloader to GOG.com for Linux users using the same API as the official GOGDownloader"
TERMUX_PKG_LICENSE="WTFPL"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.15"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/Sude-/lgogdownloader/releases/download/v${TERMUX_PKG_VERSION}/lgogdownloader-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9946558bb30b72cd5ed712e7fc425eef4b2a1fd22b5475d1a998720800cd25f0
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="boost, jsoncpp, libc++, libcurl, libhtmlcxx, libtinyxml2, rhash, tidy"
TERMUX_PKG_BUILD_DEPENDS="boost-headers"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DHELP2MAN=OFF"
