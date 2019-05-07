#!/bin/bash
cd /opt
rm -rf qemu/
wget http://wiki.qemu-project.org/download/qemu-3.1.0.tar.bz2
tar -xf qemu-3.1.0.tar.bz2
cd qemu-3.1.0
./configure --target-list=x86_64-linux-user --prefix=/opt/qemu --static
make
make install
