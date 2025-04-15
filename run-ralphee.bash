# Source ros2 stuff
source /opt/ros/humble/setup.bash
source ~/haql-rover/install/setup.bash 
# Runs ralphee
ros2 launch ralphee_launch ralphee.launch.py \
    start_navigation:=true \
    start_traverse_layer:=true \
    start_docking_server:=true \
    start_docking_server:=true