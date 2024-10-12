#!/bin/bash
# Run with: . compile.bash
# NOTE: Make sure you are not bashed into docker when running this.

if [ ! -f /home/setup ]; then

docker-compose run -it ralphee bash -c "

    cd /home/ws_dev
    source /opt/ros/humble/setup.bash
    sudo apt update
    sudo rosdep update
    sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
    source /opt/ros/humble/setup.bash
    colcon build --symlink-install
    echo 'COMPILATION COMPLETE'
    cd /home/ws_dev/src/haql-rover

"

else  
    cd /home/ws_dev
    source /opt/ros/humble/setup.bash
    sudo apt update
    sudo rosdep fix-permissions
    rosdep update
    sudo rosdep install --from-paths src --ignore-src -y --rosdistro humble
    source /opt/ros/humble/setup.bash
    colcon build --symlink-install
    echo 'COMPILATION COMPLETE'
    cd /home/ws_dev/src/haql-rover
fi