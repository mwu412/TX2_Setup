#!/bin/bash
###-- this file mainly install packages for sensors or navigation packages --### 

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

### rosserial-arduino
sudo apt-get install ros-kinetic-rosserial-arduino

###
sudo apt-get install ros-kinetic-joy

### urg_node (hokuyo lidar)
cd ~/catkin_ws/src

git clone https://github.com/ros-drivers/urg_node.git
cd urg_node
git checkout indigo-devel # there is no kinetic-level yet

cd ..
git clone https://github.com/ros-perception/laser_proc.git
cd laser_proc
git checkout indigo-devel # there is no kinetic-level yet

cd ..
git clone https://github.com/ros-drivers/urg_c.git

cd ~/catkin_ws/src
catkin_make
