#!/usr/bin/env bash
set -e

cd ~/robosub_ws
colcon build
source /opt/ros/humble/setup.bash
source install/setup.bash
echo "[dev_init] Dev environment ready"