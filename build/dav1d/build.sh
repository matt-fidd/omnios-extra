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

# Copyright 2021 OmniOS Community Edition (OmniOSce) Association.

. ../../lib/functions.sh

PROG=dav1d
VER=0.8.2
PKG=ooce/multimedia/dav1d
SUMMARY="AV1 decoder"
DESC="AV1 cross-platform decoder, open-source, and focused on speed, "
DESC+="size and correctness"

forgo_isaexec

LDFLAGS64+=" -R$PREFIX/lib/$ISAPART64"

init
download_source $PROG $PROG $VER
patch_source
prep_build meson
build -ctf
make_package
clean_up

# Vim hints
# vim:ts=4:sw=4:et:fdm=marker
