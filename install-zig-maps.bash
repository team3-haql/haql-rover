#!/bin/bash

currdir=$(pwd)

cd ~/haql-rover/zig

if [ ! -d ~/haql-rover/zig/zig_compiler ]; then
    sudo tar -xf ~/haql-rover/zig/zig.tar.xz
    sudo mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
fi

~/haql-rover/zig/zig_compiler/zig build

sudo cp ~/haql-rover/zig/zig-out/lib/libzigmaps.so /usr/lib
sudo cp ~/haql-rover/zig/zig-out/include/zigmaps.h /usr/include

cd $currdir