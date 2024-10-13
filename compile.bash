#!/bin/bash
# Run with: . compile.bash

currdir=$(pwd)

cd /root/ralphee_ws
source /opt/ros/humble/setup.bash
colcon build --symlink-install
echo 'COMPILATION COMPLETE'
cd $currdir