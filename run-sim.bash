source ~/ralphee_ws/install/setup.bash 
ros2 launch webots_dev robot_launch.py

source ~/ralphee_ws/install/setup.bash 
ros2 launch bodenbot bodenbot.launch.py \
    start_controller_node:=false \
    start_navigation:=true \
    start_traverse_layer:=true \
    start_docking_server:=true \
    start_webots:=false \
    use_mock_hardware:=true \
    debug_hardware:=true

source ~/ralphee_ws/install/setup.bash 
ros2 run bodenbot_scripts demo_auto