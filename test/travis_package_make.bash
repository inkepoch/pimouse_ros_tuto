#!/bin/bash -xve

#install for use catkin build
sudo apt install python-catkin-tools

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_ros/
cd ~/catkin_ws
catkin clean
catkin build
