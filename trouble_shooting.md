
## mrpt_package cannot be installed

- **If [the fellowing](https://github.com/MRPT/mrpt/issues/682) error occour**
```
The following packages have unmet dependencies:
 mrpt-apps : Depends: libmrpt-graphslam1.9 but it is not going to be installed
             Depends: libmrpt-gui1.9 but it is not going to be installed
             Depends: libmrpt-hmtslam1.9 but it is not going to be installed
             Depends: libmrpt-hwdrivers1.9 but it is not going to be installed
             Depends: libstdc++6 (>= 6) but 5.4.0-6ubuntu1~16.04.9 is to be installed
             Recommends: mrpt-common (= 1:1.9.9~snapshot20180311-0737-git-4acd71ce-xenial-1~ppa1~xenial) but it is not going to be installed
E: Unable to correct problems, you have held broken packages.
```
  
  1. Install gcc-7 packages (see this gist):
  ```
       sudo add-apt-repository ppa:ubuntu-toolchain-r/test
       sudo apt update
       sudo apt install g++-7 -y
  ```
## **gazebo simulator** cannot open world

- **error [parser.cc:581] Unable to find uri[model://racecar_description/models/some_model_here]**
  
  1. export GAZEBO_MODEL_PATH by adding:
  ```
      export GAZEBO_MODEL_PATH=/home/liuyc/SOLab/solabot_simulator/src/racecar_description/models:$GAZEBO_MODEL_PATH
  ```  
     to /.bashrc  
     
  2. also move the models to "/.gazebo/models" folder directly   
  3. and include the URI in launch file

## ROS package source failure

- **After editting `~/.bashrc`, sourced packages are not shown in `$ROS_PACKAGE_PATH`**

> When you first run catkin_make in the root of a workspace, the devel directory gets created and the setup.bash file inside of that dir is designed to "overlay" the workspace on top of all other workspaces that have already been sourced. It is quite common to have many "active" workspaces at a single time. [see this discussion](https://answers.ros.org/question/205976/sourcing-from-multiple-workspaces/)
    
   In short, when doing the `catkin_make`, `setup.bash` in the `devel` will do the the overlay of workspaces on top of the **current** `$ROS_PACKAGE_PATH`. 
