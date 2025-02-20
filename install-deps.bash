#!/bin/bash

source /opt/ros/$ROS_DISTRO/setup.bash
sudo apt update
sudo rosdep fix-permissions
rosdep update
sudo rosdep install --from-paths src --ignore-src -y --rosdistro $ROS_DISTRO