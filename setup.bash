#!/bin/bash

if cmp -s "/home/setup" "/home/ws_dev/src/haql-rover/setup.bash"; then
    echo "Skipping setup"
else
    curr_dir=$(pwd)

    cd /home/ws_dev
    source /opt/ros/humble/setup.bash
    echo 'SET UP COMPLETE'
    sudo apt update
    sudo rosdep update
    sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
    source /opt/ros/humble/setup.bash
    cd /home/ws_dev
    catkin init
    catkin build
    cd /home/ws_dev
    colcon build
    echo 'INSTALL DEPENDENCIES COMPLETE'

    sudo cat /home/ws_dev/src/haql-rover/setup.bash >> /home/setup

    cd $curr_dir
fi