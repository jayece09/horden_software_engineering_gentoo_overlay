# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils git

EAPI="2"

DESCRIPTION="iRecovery is a libusb-based commandline utility to talk to iBoot/iBSS in Apple's iPhone/iPod touch via USB"
HOMEPAGE="https://github.com/Chronic-Dev/libirecovery"
EGIT_REPO_URI="git://github.com/Chronic-Dev/libirecovery.git"

LICENSE="LGPL-2.1"
SLOT="0"

DEPEND="dev-libs/libusb:1
        sys-libs/readline"
RDEPEND="${DEPEND}"

src_unpack() {
	git_src_unpack || die "git source unpack failed"
}

src_compile() {
	emake all || die "failed emake"
}

src_install() {
	dobin "irecovery"
	dolib.a "libirecovery.a"
	dolib.so "libirecovery.so"
	dodoc "LICENCE" "README" "TODO" "scripts/boot.irs" "scripts/test.irs"

	# Install header file.
	insinto /usr/include
	doins include/libirecovery.h
}

