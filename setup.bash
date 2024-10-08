#!/bin/bash

if cmp -s "/home/setup" "/home/ws_dev/src/haql-rover/setup.bash"; then
    echo "Skipping setup"
else
    cd /home/ws_dev
    source /opt/ros/humble/setup.bash
    echo 'SET UP COMPLETE'
    sudo apt update
    sudo rosdep update
    sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
    echo 'INSTALL DEPENDENCIES COMPLETE'

    sudo cat /home/ws_dev/src/haql-rover/setup.bash >> /home/setup
fi