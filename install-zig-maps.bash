#!/bin/bash

currdir=$(pwd)

cd ~/ralphee_ws/zig

if [ ! -d ~/ralphee_ws/zig/zig_compiler ]; then
    tar -xf ~/ralphee_ws/zig/zig_compiler.tar.xz
    mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
fi

~/ralphee_ws/zig/zig_compiler/zig build --release=fast -p /usr

cd $currdir