# Build Recipes for the Pixie Programming Language on ARM Platforms

##  Object

This layer builds respecitvely installs [Pixie](http://pixielang.org) which is a
small  fast,  native  lisp  with  "magical"  powers  on  ARM-HF  based  embedded
platforms. The special strength of this  programming system lies in the seamless
integration of native C libraries similar to Java's introspection and reflection
API. This allows  to script native code  in runtime. This features  depends on a
subset of boost and C++ which needs to be installed on the platform as well. All
required build  dependencies, cross  compilation and installtion  procedures are
covered in the  present so called meta  layer which is also an  integral part of
the [Planck Linux Distribution](https://github.com/linneman/planck). With planck
you can cross build a complete Linux image with Pixie for ARM-HF based platforms.

## Howto use

Setup      your      host      build      system      according      to      the
[Planck installation instructions](https://github.com/linneman/planck)   and use
the following commands to build a target image for Pixie:

    source <distro-build-dir>/oe-init-build-env
    bitbake ltenad2-pixie

Refer to the article
[How to create a Boot SD-Card for the BeagleBone black](https://github.com/linneman/planck/wiki/How-to-create-a-Boot-SD-Card-for-the-BeagleBone-black) for instructions how to install the
target image on the ARM reference plafrom (BeagleBoneBlack).

The     image    comes     with     the    small     dynamic    test     library
[libffitest](https://github.com/linneman/libffitest)  and a  test pixie  program
which  illustrates pixie's  foreign function  interface capabilities.  Both, the
test application and pixie programming  system are installed under the directory
/opt on  the target.  Use the following  target shell commands  to run  the test
program:

    cd /opt/example
    pixie ffi_example.pxi

Pixie  will first  invoke  C++ to  create  bindings for  the  given library  API
which is  declared in the header  /usr/local/include/ffitest/ffitest.h. The path
/usr/local is used in this case since libffitest is usually installed under this
location  on most  native Linux  distributions. With  OpenEmbedded/Yocto a  more
appropriate  location would  be just  /usr/include where  most of  the installed
libraries are stored.

After compilation of  the bindings for the given library  provided API functions
are invoked to illustrate fundamental foreign function interface (ffi) concepts.
Refer to [libffitest](https://github.com/linneman/libffitest) and the Pixie wiki
for more detailed  explanation of how Pixie's foreign function  interface can be
used.


## Howto compile respectively uprade Pixie

Pixie has  been actually  not cross compiled  within OpenEmbedded/Yocto  yet but
instead build under a native ARM based debian distribution running under an QEMU
arm emulation on a intel based host PC. We refered to the explanations from
[the following website 'translatecode'](https://translatedcode.wordpress.com/2016/11/03/installing-debian-on-qemus-32-bit-arm-virt-board) how to do this and used the following steps:

### Getting the installer files

    wget -O installer-vmlinuz http://http.us.debian.org/debian/dists/jessie/main/installer-armhf/current/images/netboot/vmlinuz
    wget -O installer-initrd.gz http://http.us.debian.org/debian/dists/jessie/main/installer-armhf/current/images/netboot/initrd.gz

### Installing the Images

On conrast to the instructions on 'translatecode' we recommend to provide more
space for the virtual disk. Use the following command to create a virtual user
space file system with 10GB capacity:

    qemu-img create -f qcow2 hda.qcow2 10G

Run the installer on the freshly create file image:

    qemu-system-arm -M virt -m 1024 \
      -kernel installer-vmlinuz \
      -initrd installer-initrd.gz \
      -drive if=none,file=hda.qcow2,format=qcow2,id=hd \
      -device virtio-blk-device,drive=hd \
      -netdev user,id=mynet \
      -device virtio-net-device,netdev=mynet \
      -nographic -no-reboot

It follows the usual debian installation procedure. Further information can be
obtained from the
[debian installation manual](https://www.debian.org/releases/stable/armhf/ch06.html.en).

### Extracting the Kernel

The next step is to extract the freshly installed kernel files from the virtual drive
to give the QEMU emulator access to it. On contrast to the instructions of 'translatecode'
we simply convert the filesystem container from qcow2 format into a raw image container
using the following command

    qemu-img convert hda.qcow2 hda.img

This procedure allows us  to easily mount the images as  loopback device via the
following commands:

    losetup /dev/loop0 hda.img
    kpartx -a /dev/loop0
    mount /dev/mapper/loop0p1 /mnt/sd1
    mount /dev/mapper/loop0p2 /mnt/sd2

and to extract the required kernel files via these commands:

    cp /mnt/sd1/vmlinuz-3.16.0-4-armmp-lpae .
    cp /mnt/sd1/initrd.img-3.16.0-4-armmp-lpae .

### Booting the debian arm on qemu

Now we can use the following qemu command to start the virtual debian instance:

    qemu-system-arm -M virt -m 1024 \
      -kernel vmlinuz-3.16.0-4-armmp-lpae \
      -initrd initrd.img-3.16.0-4-armmp-lpae \
      -append 'root=/dev/vda2' \
      -drive if=none,file=hda.qcow2,format=qcow2,id=hd \
      -device virtio-blk-device,drive=hd \
      -netdev user,id=mynet \
      -device virtio-net-device,netdev=mynet \
      -nographic \
      -smp 8 \
      -redir tcp:2225::22

The last parameter forwards the ssh port 22 to the external port 2225 for remote
login access. After having compiled pixie we can extract the resulting files via
scp in this way.

### Compiling Pixie on debian/arm

In order  to compile  pixie you first  need to install  (at least)  the required
build tools on the virtual debian envrionment as root:

    apt-get install build-essential git pypy libffi-dev  libedit-dev \
                    libuv-dev libboost-all-dev


Follow the build instructions from the
[Pixie readme](https://github.com/pixie-lang/pixie) file about how to actually
fetch and compile Pixie.

Pay attention to the fact that at the time of this writing the current
master branch of Pixie could not be compiled which is obviously a
[known issue](https://github.com/pixie-lang/pixie/issues/535). We checked out
the commit number
[5eb0cc](https://github.com/pixie-lang/pixie/commit/5eb0ccbe8b0087d3a5f2d0bbbc6998d624d3cd62)
as recommended in the ticket instead.

After successful  compilation we  extracted the complete  pixie root  folder and
stripped out  the external  pypy directory to  reduce storage  requirements. The
resulting archive bundle has been stored in the pixie meta directory.

## License

This software can be used under the terms of the MIT License.