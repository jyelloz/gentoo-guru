# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )
DISTUTILS_USE_SETUPTOOLS=bdepend

inherit distutils-r1

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/spyoungtech/pyclip.git"
else
	SRC_URI="https://github.com/spyoungtech/pyclip/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="Python clipboard module"
HOMEPAGE="https://pypi.org/project/pyclip/"
LICENSE="Apache-2.0"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
"
RDEPEND="
	x11-misc/xclip
"
BDEPEND=""

python_test() {
	for unittest in "${S}/tests/"*".py"; do
		"${EPYTHON}" "${unittest}" || die "Tests failed"
	done
}
