source /opt/ros/humble/setup.bash
source /workspace/venv/bin/activate
alias rviz2="rviz2 -d $ROS_WS/config/dark.rviz --stylesheet $ROS_WS/config/dark.qss"

if [ -d "$ROS_WS/install" ]; then
  source install/setup.bash
fi

# TODO: Improve this by reading from a text file
help () {
cat << 'EOF'

--- ROS Build Commands ---
colcon build
source install/setup.bash

--- ROS TCP Endpoint ---
ros2 run ros_tcp_endpoint default_server_endpoint --ros-args -p ROS_IP:=<ip> -p ROS_TCP_PORT:=<port>

EOF
}
