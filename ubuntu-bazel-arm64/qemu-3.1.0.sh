#!/bin/bash
cd /opt
rm -rf qemu/
wget http://wiki.qemu-project.org/download/qemu-3.1.0.tar.bz2
tar -xf qemu-3.1.0.tar.bz2
cd qemu-3.1.0
./configure --target-list=arm-linux-user,aarch64-linux-user --prefix=/opt/qemu --static
make
sudo make install
cd /opt/qemu/bin
sudo ln -s qemu-arm qemu-arm-static
sudo ln -s qemu-aarch64 qemu-aarch64-static
