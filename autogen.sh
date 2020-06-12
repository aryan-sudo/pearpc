#!/bin/sh
# script to prepare PearPC sources
aclocal -I . \
&& autoheader \
&& automake --add-missing \
&& autoconf \
|| exit 1
# Telling end user how to continue
echo The autogen.sh had just generated the configure script. To continue, run:
echo " ./configure" and then
echo " make"
