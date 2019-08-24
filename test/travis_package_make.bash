#!/bin/bash -xve

#install for use catkin build
sudo apt install python-catkin-tools

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_ros/
sudo apt-get install protobuf-compiler
cd catkin_ws
rm -rf build/ devel/
catkin build catkin build
