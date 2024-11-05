#!/bin/bash

source /opt/ros/humble/setup.bash
sudo apt update
sudo rosdep fix-permissions
rosdep update
sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
sudo apt install libi2c-dev

sudo apt install ros-humble-navigation2
sudo apt install ros-humble-nav2-bringup