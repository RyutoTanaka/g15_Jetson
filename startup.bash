#!/bin/bash

cd ~/Documents/g15_Jetson/
. install/setup.bash

modprobe spidev

ros2 run g15_control controller & 
ros2 launch teleop_twist_joy teleop-launch.py 