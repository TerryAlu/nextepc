Format: 3.0 (native)
Source: nextepc
Binary: nextepc-core, nextepc-mme, nextepc-sgw, nextepc-pgw, nextepc-pcrf, nextepc-hss, nextepc
Architecture: any
Version: 0.3.10~xenial
Maintainer: Harald Welte <laforge@gnumonks.org>
Homepage: http://nextepc.org/
Standards-Version: 3.9.6
Vcs-Browser: https://github.com/acetcom/nextepc
Vcs-Git: git://github.com/acetcom/nextepc
Build-Depends: debhelper (>= 9), autotools-dev, pkg-config, git, dh-autoreconf, dh-systemd, flex, bison, libsctp-dev, libgnutls28-dev, libgcrypt-dev, libssl-dev, libidn11-dev, libmongoc-dev, libbson-dev, libyaml-dev
Package-List:
 nextepc deb net optional arch=any
 nextepc-core deb net optional arch=any
 nextepc-hss deb net optional arch=any
 nextepc-mme deb net optional arch=any
 nextepc-pcrf deb net optional arch=any
 nextepc-pgw deb net optional arch=any
 nextepc-sgw deb net optional arch=any
Checksums-Sha1:
 dab150eb6c652b969bcc5b2336abcc060066674f 2789056 nextepc_0.3.10~xenial.tar.xz
Checksums-Sha256:
 651b96c107418b6b9e384424c1abbc676f13b788ef1b9ebb5f23c9a50578811f 2789056 nextepc_0.3.10~xenial.tar.xz
Files:
 63d43821bd5926937fab6281b5b482b5 2789056 nextepc_0.3.10~xenial.tar.xz
