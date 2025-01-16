#!/bin/bash

currdir=$(pwd)
arch=$(uname -i)

cd ~/ralphee_ws/zig

if [ ! -d ~/ralphee_ws/zig/zig_compiler ]; then
    if [ $arch == x86_64 ]; then
        tar -xf ~/ralphee_ws/zig/zig-amd64.tar.xz
        mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
    else
        tar -xf ~/ralphee_ws/zig/zig-arm64.tar.xz
        mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
    fi
fi

~/ralphee_ws/zig/zig_compiler/zig build --release=fast -p /usr

cd $currdir