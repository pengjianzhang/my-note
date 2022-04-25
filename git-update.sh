#!/bin/sh

yum install zlib-devel

wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.36.0.tar.xz
xz -d git-2.36.0.tar.xz
tar -xvf git-2.36.0.tar
cd git-2.36.0
./configure --prefix=/usr/

make
make install
