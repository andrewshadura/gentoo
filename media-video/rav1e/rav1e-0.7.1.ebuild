# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	anes@0.1.6
	anstream@0.6.5
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	anyhow@1.0.79
	aom-sys@0.3.3
	arbitrary@1.3.2
	arg_enum_proc_macro@0.3.4
	arrayvec@0.7.4
	assert_cmd@2.0.12
	autocfg@1.1.0
	av-metrics@0.9.1
	av1-grain@0.2.3
	backtrace@0.3.69
	bindgen@0.69.1
	bitflags@1.3.2
	bitflags@2.4.1
	bitstream-io@2.2.0
	bstr@1.9.0
	built@0.7.1
	bumpalo@3.14.0
	bytemuck@1.14.0
	byteorder@1.5.0
	cast@0.3.0
	cc@1.0.83
	cexpr@0.6.0
	cfg-expr@0.15.6
	cfg-if@1.0.0
	ciborium-io@0.2.1
	ciborium-ll@0.2.1
	ciborium@0.2.1
	clang-sys@1.7.0
	clap@4.4.14
	clap_builder@4.4.14
	clap_complete@4.4.6
	clap_derive@4.4.7
	clap_lex@0.6.0
	color_quant@1.1.0
	colorchoice@1.0.0
	console@0.15.8
	crc32fast@1.3.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-channel@0.5.11
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.19
	crossbeam@0.8.4
	diff@0.1.13
	difflib@0.4.0
	doc-comment@0.3.3
	either@1.9.0
	encode_unicode@0.3.6
	env_logger@0.8.4
	equivalent@1.0.1
	errno@0.3.8
	fdeflate@0.3.3
	fern@0.6.2
	flate2@1.0.28
	form_urlencoded@1.2.1
	getrandom@0.2.12
	gimli@0.28.1
	git2@0.18.1
	glob@0.3.1
	half@1.8.2
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.3
	home@0.5.9
	idna@0.5.0
	image@0.24.7
	indexmap@2.1.0
	interpolate_name@0.2.4
	is-terminal@0.4.10
	itertools@0.10.5
	itertools@0.11.0
	itertools@0.12.0
	itoa@1.0.10
	jobserver@0.1.27
	js-sys@0.3.66
	lab@0.11.0
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.152
	libdav1d-sys@0.6.0
	libfuzzer-sys@0.4.7
	libgit2-sys@0.16.1+1.7.1
	libloading@0.8.1
	libz-sys@1.1.14
	linux-raw-sys@0.4.12
	log@0.4.20
	maybe-rayon@0.1.1
	memchr@2.7.1
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	nasm-rs@0.2.5
	new_debug_unreachable@1.0.4
	nom@7.1.3
	noop_proc_macro@0.3.0
	nu-ansi-term@0.46.0
	num-bigint@0.4.4
	num-derive@0.4.1
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.17
	object@0.32.2
	once_cell@1.19.0
	oorandom@11.1.3
	overload@0.1.1
	paste@1.0.14
	peeking_take_while@0.1.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.13
	pkg-config@0.3.28
	plotters-backend@0.3.5
	plotters-svg@0.3.5
	plotters@0.3.5
	png@0.17.10
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.0.4
	pretty_assertions@1.4.0
	prettyplease@0.2.16
	proc-macro2@1.0.76
	profiling-procmacros@1.0.13
	profiling@1.0.13
	quickcheck@1.0.3
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.0
	rayon@1.8.0
	regex-automata@0.4.3
	regex-syntax@0.8.2
	regex@1.10.2
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustix@0.38.28
	ryu@1.0.16
	same-file@1.0.6
	scan_fmt@0.2.6
	semver@1.0.21
	serde-big-array@0.5.1
	serde@1.0.195
	serde_derive@1.0.195
	serde_json@1.0.111
	serde_spanned@0.6.5
	sharded-slab@0.1.7
	shlex@1.2.0
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	simd-adler32@0.3.7
	simd_helpers@0.1.0
	smallvec@1.11.2
	syn@2.0.48
	system-deps@6.2.0
	target-lexicon@0.12.13
	terminal_size@0.3.0
	termtree@0.4.1
	thiserror-impl@1.0.56
	thiserror@1.0.56
	thread_local@1.1.7
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.21.0
	tracing-attributes@0.1.27
	tracing-chrome@0.7.1
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	url@2.5.0
	utf8parse@0.2.1
	v_frame@0.3.7
	valuable@0.1.0
	vcpkg@0.2.15
	version-compare@0.1.1
	wait-timeout@0.2.0
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen@0.2.89
	web-sys@0.3.66
	which@4.4.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.33
	y4m@0.8.0
	yansi@0.5.1
"

inherit cargo

DESCRIPTION="The fastest and safest AV1 encoder"
HOMEPAGE="https://github.com/xiph/rav1e/"
if [[ ${PV} == *9999 ]] ; then
	EGIT_REPO_URI="https://github.com/xiph/rav1e.git"
	inherit git-r3
else
	SRC_URI="
		https://github.com/xiph/rav1e/archive/v${PV}.tar.gz -> ${P}.tar.gz
		${CARGO_CRATE_URIS}
	"
	KEYWORDS="amd64 ~arm ~arm64 ~loong ~ppc64 ~riscv ~x86"
fi

LICENSE="BSD-2"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD ISC MIT
	Unicode-DFS-2016
"
SLOT="0/$(ver_cut 1-2)"
IUSE="+capi"

ASM_DEP=">=dev-lang/nasm-2.15"
BDEPEND="
	>=virtual/rust-1.70.0
	amd64? ( ${ASM_DEP} )
	capi? ( >=dev-util/cargo-c-0.6.3 )
"
# only used as a build script to check the version of rav1e...
DEPEND="dev-libs/libgit2"

# Rust
QA_FLAGS_IGNORED="usr/lib.*/librav1e.* usr/bin/rav1e"

src_unpack() {
	if [[ ${PV} == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		default
		cargo_src_unpack
	fi
}

src_compile() {
	# used by build script to get rav1e repository info
	export LIBGIT2_NO_VENDOR=1

	cargo_src_compile

	if use capi; then
		local args=$(usev !debug --release)
		cargo cbuild ${args} --target-dir="capi" \
			--prefix="/usr" --libdir="/usr/$(get_libdir)" \
			--library-type=cdylib \
			|| die "cargo cbuild failed"
	fi
}

src_install() {
	export CARGO_HOME="${ECARGO_HOME}"
	local args=$(usev debug --debug)

	if use capi; then
		cargo cinstall ${args} --target-dir="capi" \
			--prefix="/usr" --libdir="/usr/$(get_libdir)" --destdir="${ED}" \
			--library-type=cdylib \
			|| die "cargo cinstall failed"
	fi

	cargo_src_install
}
