## Razor IMU set up guide
- The following steps avoid some bugs in ROS Wiki. When you have a new Sparkfun 9DoF Razor IMU M0:

  1-1. Follow the guide by Sparkfun [here](https://learn.sparkfun.com/tutorials/9dof-razor-imu-m0-hookup-guide).
  
  *from "Installing the 9DoF Razor Arduino Core" to "Select the Board and Serial Port"*
  
  1-2. Then follow the guide by ROS Wiki [here](http://wiki.ros.org/razor_imu_9dof).
  
  *from "4.1 Install ROS razor_imu_9dof Package" to "4.2 Load Firmware into Razor Board"*
  
  *NOTICE: The instruction from ROS Wiki "Go to "Tools" → "Board" and select "Arduino Pro or Pro Mini (3.3v, 8mhz) w/ATmega328"" is deadly wrong. You should instead select "Sparkfun 9DoF Razor IMU M0".*
  
  1-3. Before you compile and upload: Download SparkFun_MPU-9250-DMP_Arduino_Library (dowload .zip file from github)
  
  1-4. (In Arduino IDE) sketch -> Include library -> Add ZIP library
  
  1-5. Now you can compile and upload the firmware to the IMU.
  

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
   
## New workspace cloned from git: catkin_make failure 

- **Clone the workspace named "solabot" from git to local but get error while `catkin_make`**

```
cd ~/solabot/src
rm -f CMakeLists.txt 
rm -fr devel
rm -fr build
```

Then everything will be alright.


## Reset TX1/TX2 to fatory setting (flash os)

- The only way to do that is to install Jetpack and flash the os.
Follow the online instruction to install Jetpack on a host computer...

**Notice:**
- Remove all external devices from the TX1/TX2.
- Setting the TX1/TX2 to the "USB Recovery Mode": 
  1. Press POWER BOTTON (then wait for the screen to show NVIDIA)
  2. Then press and hold REC BOTTON
  3. Then press and release RST BOTTON
  4. Wait for 2 secs then release REC BOTTON
- In the end, if Jetpack is of no use anymore, run the `Jetpack_Uninstaller` in `~/Downloads`. 
