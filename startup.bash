#!/bin/bash

cd ~/Documents/g15_Jetson/
. install/setup.bash

modprobe spidev

ros2 run g15_control controller __ns:=/g15& 
ros2 launch teleop_twist_joy teleop-launch.py &
ros2 run kiks_ai_bridge ai_command __params:=config.yaml __ns:=/g15 &

wait
