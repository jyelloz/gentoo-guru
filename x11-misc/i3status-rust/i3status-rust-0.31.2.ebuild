# Copyright 2020-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6

EAPI=8

CRATES="
	aho-corasick-1.0.1
	android_system_properties-0.1.5
	anstream-0.3.1
	anstyle-1.0.0
	anstyle-parse-0.2.0
	anstyle-query-1.0.0
	anstyle-wincon-1.0.1
	anyhow-1.0.70
	async-broadcast-0.5.1
	async-io-1.13.0
	async-lock-2.7.0
	async-once-cell-0.4.4
	async-pidfd-0.1.4
	async-recursion-1.0.4
	async-trait-0.1.68
	autocfg-1.1.0
	base64-0.13.1
	base64-0.21.0
	bitflags-1.3.2
	block-buffer-0.10.4
	bumpalo-3.12.1
	byteorder-1.4.3
	bytes-1.4.0
	calibright-0.1.3
	cc-1.0.79
	cfg-if-1.0.0
	charset-0.1.3
	chrono-0.4.24
	chrono-tz-0.8.2
	chrono-tz-build-0.1.0
	clap-4.2.4
	clap_builder-4.2.4
	clap_derive-4.2.0
	clap_lex-0.4.1
	clap_mangen-0.2.10
	codespan-reporting-0.11.1
	colorchoice-1.0.0
	concurrent-queue-2.2.0
	convert_case-0.6.0
	core-foundation-0.9.3
	core-foundation-sys-0.8.4
	cpufeatures-0.2.7
	crossbeam-channel-0.5.8
	crossbeam-utils-0.8.15
	crypto-common-0.1.6
	cxx-1.0.94
	cxx-build-1.0.94
	cxxbridge-flags-1.0.94
	cxxbridge-macro-1.0.94
	darling-0.10.2
	darling-0.14.4
	darling_core-0.10.2
	darling_core-0.14.4
	darling_macro-0.10.2
	darling_macro-0.14.4
	data-encoding-2.3.3
	derivative-2.2.0
	digest-0.10.6
	dirs-5.0.0
	dirs-sys-0.4.0
	either-1.8.1
	encoding_rs-0.8.32
	enumflags2-0.7.7
	enumflags2_derive-0.7.7
	env_logger-0.10.0
	errno-0.3.1
	errno-dragonfly-0.1.2
	event-listener-2.5.3
	fastrand-1.9.0
	filetime-0.2.21
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	from_variants-0.6.0
	from_variants_impl-0.6.0
	futures-0.3.28
	futures-channel-0.3.28
	futures-core-0.3.28
	futures-executor-0.3.28
	futures-io-0.3.28
	futures-lite-1.13.0
	futures-sink-0.3.28
	futures-task-0.3.28
	futures-util-0.3.28
	generic-array-0.14.7
	gethostname-0.2.3
	getrandom-0.2.9
	h2-0.3.18
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.2.6
	hermit-abi-0.3.1
	hex-0.4.3
	http-0.2.9
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.26
	hyper-tls-0.5.0
	iana-time-zone-0.1.56
	iana-time-zone-haiku-0.1.1
	ident_case-1.0.1
	idna-0.3.0
	indexmap-1.9.3
	inotify-0.10.0
	inotify-0.9.6
	inotify-sys-0.1.5
	instant-0.1.12
	io-lifetimes-1.0.10
	ipnet-2.7.2
	is-terminal-0.4.7
	itertools-0.8.2
	itoa-1.0.6
	js-sys-0.3.61
	kqueue-1.0.7
	kqueue-sys-1.0.3
	lazy_static-1.4.0
	libc-0.2.142
	libpulse-binding-2.27.1
	libpulse-sys-1.20.1
	libsensors-sys-0.2.0
	link-cplusplus-1.0.8
	linux-raw-sys-0.3.4
	log-0.4.17
	maildir-0.6.4
	mailparse-0.14.0
	memchr-2.5.0
	memoffset-0.7.1
	mime-0.3.17
	minimal-lexical-0.2.1
	mio-0.8.6
	native-tls-0.2.11
	neli-0.6.4
	neli-proc-macros-0.1.3
	neli-wifi-0.5.1
	nix-0.26.2
	nom-7.1.3
	notify-5.1.0
	notmuch-0.8.0
	num-derive-0.3.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.15.0
	once_cell-1.17.1
	openssl-0.10.51
	openssl-macros-0.1.1
	openssl-probe-0.1.5
	openssl-sys-0.9.86
	ordered-stream-0.2.0
	pandoc-0.8.10
	parking-2.1.0
	parse-zoneinfo-0.3.0
	percent-encoding-2.2.0
	phf-0.11.1
	phf_codegen-0.11.1
	phf_generator-0.11.1
	phf_shared-0.11.1
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	polling-2.8.0
	ppv-lite86-0.2.17
	proc-macro-crate-1.3.1
	proc-macro2-1.0.56
	pure-rust-locales-0.5.6
	quick-xml-0.28.2
	quote-1.0.26
	quoted_printable-0.4.7
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	redox_syscall-0.2.16
	redox_syscall-0.3.5
	redox_users-0.4.3
	regex-1.8.1
	regex-syntax-0.7.1
	reqwest-0.11.16
	roff-0.2.1
	rustix-0.37.14
	ryu-1.0.13
	same-file-1.0.6
	schannel-0.1.21
	scratch-1.0.5
	security-framework-2.8.2
	security-framework-sys-2.8.0
	sensors-0.2.2
	serde-1.0.160
	serde_derive-1.0.160
	serde_json-1.0.96
	serde_repr-0.1.12
	serde_spanned-0.6.1
	serde_urlencoded-0.7.1
	serde_with-2.3.2
	serde_with_macros-2.3.2
	sha1-0.10.5
	shellexpand-3.1.0
	signal-hook-0.3.15
	signal-hook-registry-1.4.1
	signal-hook-tokio-0.3.1
	siphasher-0.3.10
	slab-0.4.8
	smart-default-0.7.1
	socket2-0.4.9
	static_assertions-1.1.0
	strsim-0.10.0
	strsim-0.9.3
	swayipc-async-2.0.1
	swayipc-types-1.3.0
	syn-1.0.109
	syn-2.0.15
	tempfile-3.5.0
	termcolor-1.2.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	time-0.3.20
	time-core-0.1.0
	time-macros-0.2.8
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.27.0
	tokio-macros-2.0.0
	tokio-native-tls-0.3.1
	tokio-util-0.7.7
	toml-0.7.3
	toml_datetime-0.6.1
	toml_edit-0.19.8
	tower-service-0.3.2
	tracing-0.1.37
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	try-lock-0.2.4
	typenum-1.16.0
	uds_windows-1.0.2
	unicode-bidi-0.3.13
	unicode-ident-1.0.8
	unicode-normalization-0.1.22
	unicode-segmentation-1.10.1
	unicode-width-0.1.10
	url-2.3.1
	utf8parse-0.2.1
	vcpkg-0.2.15
	version_check-0.9.4
	waker-fn-1.1.0
	walkdir-2.3.3
	want-0.3.0
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-futures-0.4.34
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	wayrs-client-0.10.0
	wayrs-protocols-0.10.0
	wayrs-scanner-0.10.0
	web-sys-0.3.61
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.48.0
	windows-sys-0.42.0
	windows-sys-0.45.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.0
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winnow-0.4.1
	winreg-0.10.1
	xdg-home-1.0.0
	zbus-3.12.0
	zbus_macros-3.12.0
	zbus_names-2.5.0
	zvariant-3.12.0
	zvariant_derive-3.12.0
	zvariant_utils-1.0.0
"
inherit cargo optfeature

DESCRIPTION="A feature-rich and resource-friendly replacement for i3status, written in Rust."
HOMEPAGE="https://github.com/greshake/i3status-rust/"
SRC_URI="https://github.com/greshake/i3status-rust/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	0BSD Apache-2.0 BSD GPL-3 GPL-3+ ISC MIT MirOS Unicode-DFS-2016
	|| ( Artistic-2 CC0-1.0 )
"
SLOT="0"
KEYWORDS="~amd64"
IUSE="man notmuch pulseaudio"
PATCHES=(
	"${FILESDIR}"/${P}-disable-stripping.patch
)

DEPEND="dev-libs/openssl:=
	sys-apps/dbus
	sys-apps/lm-sensors:=
	notmuch? ( net-mail/notmuch:= )
	pulseaudio? ( media-libs/libpulse )"
RDEPEND="${DEPEND}"
BDEPEND="man? ( virtual/pandoc )"

QA_FLAGS_IGNORED="usr/bin/i3status-rs"

src_configure() {
	local myfeatures=(
		$(usev notmuch)
		maildir
	)
	cargo_src_configure $(usex pulseaudio '' --no-default-features)
}

src_compile() {
	cargo_src_compile
	if use man; then
		cargo xtask generate-manpage || die
	fi
}

src_install() {
	cargo_src_install
	use man && doman man/i3status-rs.1
	insinto /usr/share/"${PN}"
	doins -r files/icons files/themes
	dodoc NEWS.md
	docinto examples
	dodoc examples/*.toml
}

pkg_postinst() {
	optfeature_header "Configurable fonts for themes and icons:"
	optfeature "themes using the Powerline arrow char" media-fonts/powerline-symbols
	optfeature "the awesome{5,6} icon set" media-fonts/fontawesome
	optfeature_header "Status bar blocks with additional requirements:"
	optfeature "ALSA volume support" media-sound/alsa-utils
	optfeature "advanced/non-standard battery support" sys-power/apcupsd sys-power/upower
	optfeature "bluetooth support" net-wireless/bluez
	optfeature "KDE Connect support" kde-misc/kdeconnect
	optfeature "speedtest support" net-analyzer/speedtest-cli
	# optfeature "VPN support" net-vpn/nordvpn # nordvpn overlay
	elog "The music block supports all music players that implement the MPRIS"
	elog "interface. These include media-sound/rhythmbox, media-sound/mpv and"
	elog "www-client/firefox among others. MPRIS support may be built-in or"
	elog "require additional plugins."
}
