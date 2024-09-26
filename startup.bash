#!/bin/bash

cd ~/Documents/G15/Jetson
. install/setup.bash

modprobe spidev

ros2 run g15_control controller & 
ros2 topic pub --rate 50 /cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.1, y: 0.0, z: 0.0}, angular: {x: 0, y: 0.0, z: 0.0}}"

