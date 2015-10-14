#!/bin/sh

export CFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"

./autogen.sh
./aclocal.sh
./configure --prefix=$PREFIX

make
make install
