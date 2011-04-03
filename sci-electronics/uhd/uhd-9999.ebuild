# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git distutils

EAPI="3"
PYTHON_DEPEND="2:2.6"

DESCRIPTION="The UHD is the universal hardware driver for Ettus Research products."
HOMEPAGE=""
EGIT_REPO_URI="git clone git://code.ettus.com/ettus/uhd.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=">=dev-util/cmake-2.6
	>=dev-libs/boost-1.42.0
	>=dev-python/cheetah-2.4.4
	>=app-doc/doxygen-1.7.3"
RDEPEND="${DEPEND}
	>=dev-libs/libusb-1.0.1"
