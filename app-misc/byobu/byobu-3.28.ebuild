inherit distutils eutils versionator

EAPI="3"
PYTHON_DEPEND="2:2.6"
RESTRICT_PYTHON_ABIS="3.*"

PV_BASE=$(get_version_component_range 1-2)

DESCRIPTION="A set of useful profiles and a profile-switcher for GNU screen.
 Byobu includes a set of profiles for the GNU screen window manager.
 These profiles are quite useful on server machines which are not running
 a graphical desktop. The 'screen' command provides a number of advanced
 features are not necessarily exposed in the default profile. These profiles
 provide features such as status bars, clocks, notifiers (reboot required,
 updates available), etc. The profile-switcher allows users to quickly switch
 their .screenrc to any of the available profiles."
HOMEPAGE="https://launchpad.net/byobu"
SRC_URI="http://launchpad.net/${PN}/trunk/${PV_BASE}/+download/${P}_${PV}.orig.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-misc/screen-4.0.3
	>=dev-libs/newt-0.52.12"

src_configure() {
	econf \
		--prefix=/usr
}

src_install() {
	emake -j1 DESTDIR="${D}" install 
}
