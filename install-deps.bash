#!/bin/bash

source /opt/ros/$ROS_DISTRO/setup.bash
sudo apt update
sudo rosdep fix-permissions
rosdep update
sudo rosdep install --from-paths src --ignore-src -y --rosdistro $ROS_DISTRO
if [$? != 0]; then
    echo rosdep install failed
    return 1
fi
sudo apt install libi2c-dev
