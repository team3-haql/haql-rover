#!/bin/bash
# Run with: . compile.bash

currdir=$(pwd)

cd /root/ralphee_ws
source /opt/ros/humble/setup.bash
colcon build --symlink-install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
if [ $? == 0 ]; then
    echo 'COMPILATION COMPLETE'
else
    echo 'COMPILATION FAILED'
    echo $?
fi
cd $currdir