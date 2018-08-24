## Razor IMU set up error (in Arduino IDE)
- This happends when following http://wiki.ros.org/razor_imu_9dof

  1-1. Download SparkFun_MPU-9250-DMP_Arduino_Library (dowload .zip file from github)
  
  1-2. (In Arduino IDE) sketch -> Include library -> Add ZIP library

  2-1. In Razor-AHRS.ino:
```
#define LOG_PORT Serial
/*
#if HW__VERSION_CODE == 14001
// Set your port used to send out data here!
#define LOG_PORT SERIAL_PORT_USBVIRTUAL
#else
// Set your port used to send out data here!
#define LOG_PORT Serial
#endif // HW__VERSION_CODE
*/
```

## mrpt_package cannot be installed

- If same thing happend like in "https://github.com/MRPT/mrpt/issues/682"
  
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
