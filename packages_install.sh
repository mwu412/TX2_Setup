#!/bin/bash
###-- this file mainly install packages for sensors or navigation packages --### 

###-- basic ros command and package --###
# rosbash, map_server
sudo apt-get install ros-kinetic-rosbash ros-kinetic-map-server

###-- joy --###
sudo apt-get install ros-kinetic-joy

###-- rplidar --###
sudo apt-get install ros-kinetic-rplidar-ros

###-- razor_imu_9DOF --###
sudo apt-get install ros-kinetic-razor-imu-9dof

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

###-- joint_state_controller --###
sudo apt-get install ros-kinetic-joint-state-controller
