#!/bin/bash

currdir=$(pwd)
arch=$(uname -i)

cd ~/haql-rover/zig

if [ ! -d ~/haql-rover/zig/zig_compiler ]; then
    if [ $arch == x86_64 ]; then
        tar -xf ~/haql-rover/zig/zig-amd64.tar.xz
        mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
    else
        tar -xf ~/haql-rover/zig/zig-arm64.tar.xz
        mv zig-linux-aarch64-0.14.0-dev.2647+5322459a0 zig_compiler
    fi
fi

~/haql-rover/zig/zig_compiler/zig build --release=fast -p /usr
if [ $? == 0 ]; then
    echo Zig Maps installed!
fi

cd $currdir
