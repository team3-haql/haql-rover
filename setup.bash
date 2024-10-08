#!/bin/bash

file="/home/ws_dev/src/haql-rover/setup_complete"

if [ ! -e ${file} ]; then
    cd /home/ws_dev
    source /opt/ros/humble/setup.bash
    echo 'SET UP COMPLETE'
    sudo apt update
    sudo rosdep update
    sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
    echo 'INSTALL DEPENDENCIES COMPLETE'
fi

touch setup_complete