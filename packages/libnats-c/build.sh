TERMUX_PKG_HOMEPAGE=https://nats-io.github.io/nats.c/
TERMUX_PKG_DESCRIPTION="A C client for the NATS messaging system"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.8.3"
TERMUX_PKG_SRCURL=https://github.com/nats-io/nats.c/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=fe7e9ce7636446cc3fe0f47f6a235c4783299e00d5e5c4a1f8689d20707871db
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="libprotobuf-c, openssl"
