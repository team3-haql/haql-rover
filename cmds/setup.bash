#!/bin/bash

if cmp -s "/home/ws_dev/setup" "/home/ws_dev/src/haql-rover/setup.bash"; then
    echo 'Skipping installs'
else
    curr_dir=$(pwd)

    echo 'INSTALLING INIT'
    . /home/ws_dev/src/haql-rover/cmds/init.bash
    echo 'INSTALLING LTTNG'
    . /home/ws_dev/src/haql-rover/cmds/lttng-install.bash
    echo 'INSTALLING ROS2'
    . /home/ws_dev/src/haql-rover/cmds/ros2-install.bash

    sudo cat /home/ws_dev/src/haql-rover/setup.bash >> /home/ws_dev/setup

    cd $curr_dir
fi