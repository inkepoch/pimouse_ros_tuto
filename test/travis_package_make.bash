#!/bin/bash -xve

#install for use catkin build
sudo apt install python-catkin-tools

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_ros/
sudo apt-get install protobuf-compiler

#try install yaml
pip install pyyaml

#create Log Space
mkdir ~/catkin_ws/logs

cd ~/catkin_ws
rm -rf build/ devel/
. /opt/ros/melodic/setup.bash
catkin init
catkin build
