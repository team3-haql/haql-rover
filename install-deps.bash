#!/bin/bash

source /opt/ros/$ROS_DISTRO/setup.bash
sudo apt update
sudo rosdep fix-permissions
rosdep update
sudo rosdep install --from-paths src --ignore-src -y --rosdistro $ROS_DISTRO
sudo apt install libi2c-dev

sudo apt install ros-humble-navigation2
sudo apt install ros-humble-nav2-bringup