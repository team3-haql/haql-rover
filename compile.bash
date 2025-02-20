#!/bin/bash
# Run with: . compile.bash

currdir=$(pwd)

cd ~/haql-rover
source /opt/ros/$ROS_DISTRO/setup.bash
colcon build --symlink-install --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
echo 'COMPILATION COMPLETE'
cd $currdir