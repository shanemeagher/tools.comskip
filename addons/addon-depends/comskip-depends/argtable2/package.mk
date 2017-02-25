################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="argtable2"
PKG_VERSION="13"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="LGPLv2"
PKG_SITE="http://argtable.sourceforge.net/"
PKG_URL="http://downloads.sourceforge.net/project/argtable/argtable/argtable-2.${PKG_VERSION}/argtable2-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="tools"
PKG_SHORTDESC="Argtable is an ANSI C library for parsing GNU style command line arguments."
PKG_LONGDESC="Argtable is an ANSI C library for parsing GNU style command line options with a minimum of fuss."
PKG_AUTORECONF="no"

configure_target() {
  ../configure \
    --disable-shared \
    --prefix=$SYSROOT_PREFIX/usr \
    --enable-static \
    --host="$TARGET_NAME" \
#  ../configure --disable-shared
}

make_target() {
  make
}

makeinstall_target() {
  make install
#  : # nop
}
