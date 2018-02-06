SUMMARY = "Illustration of Pixie's Foreign Function Interface"
HOMEPAGE = "https://github.com/linneman/libffitest"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=23c2a5e0106b99d75238986559bb5fc6"
SRCREV = "af524381d817bab5e4cc412c1a6c27be67556771"
SRC_URI = "git://github.com/linneman/libffitest.git"
S = "${WORKDIR}/git"

# do not include the package boost here to avoid that the complete boost-dev
# package is integrated!

RDEPENDS_${PN} = "packagegroup-core-buildessential boost-ffi-headers"

inherit autotools pkgconfig


PACKAGE_SNAP_LIB_SYMLINKS = "0"
INHIBIT_PACKAGE_STRIP = "1"
INSANE_SKIP_${PN} += "dev-deps"

do_install_append() {
  mkdir -p ${D}/opt/examples
  cp -r ${S}/example_pixie/example.pxi ${D}/opt/examples/ffi_example.pxi

  mkdir -p ${D}/usr/local/include
  ln -s /usr/include/ffitest ${D}/usr/local/include/ffitest
}

FILES_${PN} += "/opt/examples/*"
FILES_${PN} += "/usr/local/include/ffitest"