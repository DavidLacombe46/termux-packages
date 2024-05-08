TERMUX_PKG_HOMEPAGE=https://z-push.org/
TERMUX_PKG_DESCRIPTION="An open-source application to synchronize ActiveSync compatible devices and Outlook"
TERMUX_PKG_LICENSE="AGPL-V3"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.7.2"
TERMUX_PKG_SRCURL=https://github.com/Z-Hub/Z-Push/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9c28e51f1c130539cea5b80b9df433e8d80079c14528ef9daf1a2fb69c409510
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="apache2, php"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make_install() {
	cp -rT src $TERMUX_PREFIX/share/z-push
	local f
	for f in z-push-{admin,top}; do
		ln -sfr $TERMUX_PREFIX/share/z-push/${f}.php $TERMUX_PREFIX/bin/${f}
		install -Dm600 -t $TERMUX_PREFIX/share/man/man8 man/${f}.8
	done
	install -Dm600 -t $TERMUX_PREFIX/etc/apache2/conf.d config/apache2/*.conf
}

termux_step_create_debscripts() {
	cat <<- EOF > ./postinst
	#!$TERMUX_PREFIX/bin/sh
	mkdir -p $TERMUX_PREFIX/var/lib/z-push
	mkdir -p $TERMUX_PREFIX/var/log/z-push
	EOF
}
