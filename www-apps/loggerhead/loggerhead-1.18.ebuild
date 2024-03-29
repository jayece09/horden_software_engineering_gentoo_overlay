# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils eutils versionator

EAPI="3"
PYTHON_DEPEND="2:2.6"
RESTRICT_PYTHON_ABIS="3.*"

PV_BASE=$(get_version_component_range 1-2)

DESCRIPTION="Web viewer for Bazaar
 This is a web viewer for projects in the Bazaar version control system.
 It can be used to navigate a branch history, annotate files, view patches and
 perform searches."
HOMEPAGE="https://launchpad.net/loggerhead"
SRC_URI="http://launchpad.net/${PN}/${PV_BASE}/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="apache2 search"

DEPEND=">=dev-python/paste-1.6
	apache2? ( >=dev-python/pastedeploy-1.3 )"
RDEPEND="${DEPEND}
	<dev-vcs/bzr-2.3
	=dev-python/simpletal-4.2
	dev-python/simplejson
	search? ( dev-vcs/bzr-search )"

S="${WORKDIR}"/"${PN}"-"${PV}"

pkg_setup() {
	enewgroup loggerhead
	enewuser loggerhead -1 -1 -1 loggerhead
}

src_install() {
	distutils_src_install
	newinitd "${FILESDIR}"/loggerhead.init loggerhead
	newconfd "${FILESDIR}"/loggerhead.confd loggerhead
}
