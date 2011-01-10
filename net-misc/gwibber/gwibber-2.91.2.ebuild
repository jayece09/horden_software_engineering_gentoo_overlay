# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

DESCRIPTION="Open source social networking client for GNOME
 Gwibber is a social networking client for GNOME. It supports Facebook,
 Twitter, Identi.ca, StatusNet, FriendFeed, Qaiku, Flickr, and Digg."
HOMEPAGE="https://launchpad.net/gwibber"
SRC_URI="http://launchpad.net/${PN}/trunk/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 x86"
IUSE=""

RDEPEND="
	dev-lang/python[sqlite]
	>=dev-python/dbus-python-0.80.2
	>=dev-python/gconf-python-2.18.0
	dev-python/gnome-keyring-python
	>=dev-python/imaging-1.1.6
	>=dev-python/notify-python-0.1.1
	>=dev-python/pywebkitgtk-1.0.1
	>=dev-python/simplejson-1.9.1
	>=dev-python/egenix-mx-base-3.0.0
	>=dev-python/python-distutils-extra-2.15
	>=dev-python/pycurl-7.19.0
	>=dev-python/libwnck-python-2.26.0
	>=dev-python/feedparser-4.1
	>=dev-python/pyxdg-0.15
	>=dev-python/mako-0.2.4
	>=dev-python/pygtk-2.16
	dev-python/oauth
	>=gnome-base/librsvg-2.22.2"
	
src_install() {
	distutils_src_install

	insinto /usr/share/dbus-1/services
	doins com.Gwibber{.Service,Client}.service
	doman gwibber{,-poster}.1
}
