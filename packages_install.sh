#!/bin/bash
###-- This file mainly install packages for sensors or navigation packages --### 
###-- Read the instruction of each package carefully --###

###-- basic ros command and package --###
# rosbash, map_server
sudo apt-get install ros-kinetic-rosbash ros-kinetic-map-server

###-- joy --###
sudo apt-get install ros-kinetic-joy

###-- rplidar --###
sudo apt-get install ros-kinetic-rplidar-ros

###-- razor_imu_9DOF --###
sudo apt-get install ros-kinetic-razor-imu-9dof
# INSTRUCTION: copy solabot/src/solabot_navigation/scripts/solabot_imu.py to /opt/ros/kinetic/share/razor_imu_9dof/nodes

###-- rf2o --###
sudo apt-get install ros-kinetic-mrpt-ekf-slam-2d

###-- move_base --###
sudo apt-get install ros-kinetic-move-base

###-- amcl --###
sudo apt-get install ros-kinetic-amcl

###-- robot_localization --###
sudo apt-get install ros-kinetic-robot-localization

###-- rqt --###
sudo apt-get install ros-kinetic-rqt
sudo apt-get install ros-kinetic-rqt-common-plugins

###-- mrpt (rf2o is part of this package) --###
sudo apt-get install mrpt-apps libmrpt-dev
# see trouble shooting if something is wrong #

###-- effort_controllers (solabot_simulator in gazebo) --###
sudo apt-get install ros-kinetic-effort-controllers

### rosserial-python
sudo apt-get install ros-kinetic-rosserial-python

### rosserial-arduino
sudo apt-get install ros-kinetic-rosserial-arduino

### ros-kinetic-joy
sudo apt-get install ros-kinetic-joy

### urg_node (hokuyo lidar
sudo apt-get install ros-kinetic-urg-node

# (Alternative) From source:
# cd ~/catkin_ws/src

#git clone https://github.com/ros-drivers/urg_node.git
#cd urg_node
#git checkout indigo-devel # there is no kinetic-level yet

#cd ..
#git clone https://github.com/ros-perception/laser_proc.git
#cd laser_proc
#git checkout indigo-devel # there is no kinetic-level yet

#cd ..
#git clone https://github.com/ros-drivers/urg_c.git

#cd ~/catkin_ws/src
#catkin_make

###-- joint_state_controller --###
sudo apt-get install ros-kinetic-joint-state-controller

###-- dwa_local_planner --###
sudo apt-get install ros-kinetic-dwa-local-planner
