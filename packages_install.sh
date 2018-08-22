#!/bin/bash
###-- this file mainly install packages for sensors or navigation packages --### 

# urg_node for hokuyo
sudo apt-get install ros-kinetic-urg-node

# joy package
sudo apt-get install ros-kinetic-joy

###-- rplidar --###
###-- ======= --###
sudo apt-get install ros-kinetic-rplidar-ros

###-- razor_imu_9DOF --###
###-- ============== --###
sudo apt-get install ros-kinetic-razor-imu-9dof

###-- rf2o --###
###-- ==== --###
sudo apt-get install ros-kinetic-mrpt-ekf-slam-2d

###-- move_base --###
###-- ========= --###
sudo apt-get install ros-kinetic-move-base

###-- amcl --###
###-- ==== --###
sudo apt-get install ros-kinetic-amcl

###-- robot_localization --###
###-- ================== --###
sudo apt-get install ros-kinetic-robot-localization

###-- rqt --###
###-- === --###
sudo apt-get install ros-kinetic-rqt
sudo apt-get install ros-kinetic-rqt-common-plugins

###-- mrpt (rf2o is part of this package) --###
###-- =================================== --###
sudo apt-get install mrpt-apps libmrpt-dev
# see trouble shooting if something is wrong #

###-- effort_controllers (solabot_simulator in gazebo) --###
###-- ================================================ --###
sudo apt-get install ros-kinetic-effort-controllers

