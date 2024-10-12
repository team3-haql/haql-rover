#!/bin/bash
# Run with: . compile.bash

dir=pwd

# make sure you are in the root of the workspace
cd /home/ws_dev

# install dependencies
sudo apt update
sudo rosdep update
sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble

cd /home/ws_dev
# make sure you have sourced a ros setup file before building
colcon build --symlink-install

cd $dir