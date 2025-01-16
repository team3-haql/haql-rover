#!/bin/bash

currdir=$(pwd)
arch=$(uname -i)

cd ~/haql-rover/zig

if [ ! -d ~/haql-rover/zig/zig_compiler ]; then
    sudo tar -xf ~/haql-rover/zig/zig.tar.xz
    sudo mv zig-linux-x86_64-0.14.0-dev.2063+5ce17ecfa zig_compiler
fi

~/ralphee_ws/zig/zig_compiler/zig build --release=fast -p /usr

cd $currdir