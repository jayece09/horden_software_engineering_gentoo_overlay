# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit bzr distutils

EAPI="3"
PYTHON_DEPEND="2:2.6"
RESTRICT_PYTHON_ABIS="3.*"

DESCRIPTION="Debian package management plugin for Bazaar
 bzr-builddeb is a plugin for the bzr version control system that helps to
 automate the task of maintaining Debian packages using bzr. It is similar
 in intent to cvs-buildpackage, svn-buildpackage and the similar scripts.
 .
 It builds a Debian package from a bzr branch, optionally using a separate
 upstream tarball."
HOMEPAGE="https://launchpad.net/bzr-builddeb"
EBZR_REPO_URI="lp:bzr-builddeb/2.4"

#bzr branch lp:bzr-builddeb/2.4
#version 2.4.2

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="<dev-vcs/bzr-2.3"
