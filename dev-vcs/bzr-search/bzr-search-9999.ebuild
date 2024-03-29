# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit bzr distutils

EAPI="3"
PYTHON_DEPEND="2:2.6"
RESTRICT_PYTHON_ABIS="3.*"

DESCRIPTION="Search plugin for Bazaar
 This is a plugin for Bazaar that can index and search local and remote
 branches.
 .
 It adds a 'index' and a 'search' command to the Bazaar command-line UI."
HOMEPAGE="https://launchpad.net/bzr-search"
EBZR_REPO_URI="lp:bzr-search"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="<dev-vcs/bzr-2.3"
