#!/bin/sh

export CFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"

./bootstrap.sh
./configure --prefix=$PREFIX              \
            --with-pynest-prefix=$PREFIX  \
            --without-openmp              \
            --without-readline

make
make install
