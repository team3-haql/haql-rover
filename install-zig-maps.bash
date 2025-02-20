#!/bin/bash

currdir=$(pwd)
arch=$(uname -i)

cd ~/haql-rover/zig

if [ ! -d ~/ralphee_ws/zig/zig_compiler ]; then
    if [ $arch == x86_64 ]; then
        tar -xf ~/ralphee_ws/zig/zig-amd64.tar.xz
        mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
    else
        tar -xf ~/ralphee_ws/zig/zig-arm64.tar.xz
        mv zig-linux-aarch64-0.14.0-dev.2647+5322459a0 zig_compiler
    fi
if [ ! -d ~/haql-rover/zig/zig_compiler ]; then
    sudo tar -xf ~/haql-rover/zig/zig.tar.xz
    sudo mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
fi

~/ralphee_ws/zig/zig_compiler/zig build --release=fast -p /usr
~/haql-rover/zig/zig_compiler/zig build

sudo cp ~/haql-rover/zig/zig-out/lib/libzigmaps.so /usr/lib
sudo cp ~/haql-rover/zig/zig-out/include/zigmaps.h /usr/include

cd $currdir