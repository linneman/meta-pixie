SUMMARY = "NetBSD Editline libraray (libedit)"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=1e4228d0c5a9093b01aeaaeae6641533"
DEPENDS = "ncurses"

SRC_URI = "http://thrysoee.dk/editline/libedit-20170329-3.1.tar.gz"

SRC_URI[md5sum] = "c57a0690e62ef523c083598730272cfd"
SRC_URI[sha256sum] = "91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be"

S = "${WORKDIR}/libedit-20170329-3.1"

inherit autotools pkgconfig
