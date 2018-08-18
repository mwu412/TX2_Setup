
## mrpt_package cannot be installed

- If same thing happend like in "https://github.com/MRPT/mrpt/issues/682"
  => Install gcc-7 packages (see this gist):
  
      sudo add-apt-repository ppa:ubuntu-toolchain-r/test
      sudo apt update
      sudo apt install g++-7 -y

##**gazebo simulator** cannot open world

- **error [parser.cc:581] Unable to find uri[model://racecar_description/models/some_model_here]**
  => export GAZEBO_MODEL_PATH by adding:
     *export GAZEBO_MODEL_PATH=/home/liuyc/SOLab/solabot_simulator/src/racecar_description/models:$GAZEBO_MODEL_PATH*
     to /.bashrc
  => also move the models to "/.gazebo/models" folder directly 
  => and include the URI in launch file
