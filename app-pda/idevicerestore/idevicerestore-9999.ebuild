# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils git autotools

EAPI=2
WANT_AUTOCONF="latest"
WANT_AUTOMAKE="latest"

DESCRIPTION="Restore firmware and filesystem of an iPhone, iPod Touch, or iPad."
HOMEPAGE="http://www.libimobiledevice.org/"
EGIT_REPO_URI="git://github.com/Chronic-Dev/idevicerestore.git"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=app-pda/libimobiledevice-1.1.0
	app-pda/libirecovery
	>=app-pda/libplist-0.15
	>=dev-libs/libzip-0.8
	>=net-misc/curl-7.0"
DEPEND="dev-util/pkgconfig
	>=sys-devel/autoconf-2.59
	>=sys-devel/automake-1.10
	${RDEPEND}"

src_unpack() {
	git_src_unpack || die "git source unpack failed"
}

src_prepare() {
	eautoreconf || die "failed autoreconf"
}

src_configure() {
	econf || die "failed econf"
}

src_compile() {
	emake all || die "failed emake"
}

src_install() {
	emake DESTDIR="${D}" install || die "failed install"
	dodoc AUTHORS COPYING README
}

