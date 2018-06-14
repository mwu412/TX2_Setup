#!/bin/bash
###-- this file mainly install packages for sensors or navigation packages --### 

###-- ======= --###
###-- rplidar --###
###-- ======= --###
sudo apt-get install ros-kinetic-rplidar-ros

###-- ============== --###
###-- razor_imu_9DOF --###
###-- ============== --###
sudo apt-get install ros-kinetic-razor-imu-9dof

###-- ==== --###
###-- rf2o --###
###-- ==== --###
sudo apt-get install ros-kinetic-mrpt-ekf-slam-2d

###-- ========= --###
###-- move_base --###
###-- ========= --###
sudo apt-get install ros-kinetic-move-base
