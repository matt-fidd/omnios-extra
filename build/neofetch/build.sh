#!/usr/bin/bash
#
# {{{ CDDL HEADER
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source. A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
# }}}

# Copyright 2022 OmniOS Community Edition (OmniOSce) Association.

. ../../lib/build.sh

PROG=neofetch
VER=7.1.0
PKG=ooce/application/neofetch
SUMMARY="Neofetch system information tool"
DESC="$PROG - A command-line system information tool written in bash 3.2+"

set_arch 64

RUN_DEPENDS_IPS+="
    shell/bash
"

# No configure or build step
configure64() { :; }
make_prog() { :; }

MAKE_INSTALL_ARGS+=" PREFIX=$PREFIX"

init
download_source $PROG $VER
patch_source
prep_build
build
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
