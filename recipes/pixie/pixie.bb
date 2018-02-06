SUMMARY = "A small, fast, native lisp with magical powers"
LICENSE = "GPLv3 & LGPLv3"
LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=dbb9da34eb417dd3aeea0804c582f825"
PR = "r0"

RDEPENDS_${PN} = "libffi libedit boost"

SRC_ADDON_DIR = "${THISDIR}/files"
SRC_URI = "file://pixie_compact.tar.gz \
           file://COPYING.LESSER"
S = "${WORKDIR}/${PN}"


do_compile() {
}

do_install() {
  mkdir -p ${D}/opt
  mkdir -p ${D}/usr/local/bin

  tar x -C ${S} -f ${SRC_ADDON_DIR}/pixie_compact.tar.gz
  cp -r ${S}/pixie ${D}/opt/
  ln -s /opt/pixie/pixie-vm ${D}/usr/local/bin/pixie

  # create symlinks under generic library name to allow pixie dynamic loading
  ln -s /lib/libm.so.6 ${D}/opt/pixie/libm.so
  ln -s /usr/lib/libedit.so.0 ${D}/opt/pixie/libedit.so
  ln -s /usr/lib/libffi.so.6 ${D}/opt/pixie/libffi.so
}

PACKAGE_SNAP_LIB_SYMLINKS = "0"

INSANE_SKIP_${PN} += "dev-so debug-files staticdev"
FILES_${PN} += "opt/*"
FILES_${PN} += "/usr/local/bin/pixie"