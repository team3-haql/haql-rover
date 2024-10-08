#!/bin/bash

cd /home/ws_dev
source /opt/ros/humble/setup.bash
colcon build --symlink-install
echo "COMPILATION COMPLETE"
cd /home/ws_dev/src/haql-rover