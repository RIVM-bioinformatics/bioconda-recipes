#! /bin/bash

mkdir -p $PREFIX/bin

mkdir build
cd build
export CPATH=${BUILD_PREFIX}/include
export CXXPATH=${BUILD_PREFIX}/include
export CXXFLAGS="$CFLAGS -I$BUILD_PREFIX/include"
export LDFLAGS="$LDFLAGS -L$BUILD_PREFIX/lib"
cmake ..
make -j ${CPU_COUNT} PgRC

cp PgRC $PREFIX/bin
