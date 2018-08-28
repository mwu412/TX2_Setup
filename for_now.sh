#!/bin/bash

###-- TensorFlow Installation --###
# ref:https://www.tensorflow.org/install/install_linux#InstallingVirtualenv

#  Install Python, pip, and virtualenv. Before that check python and pip version
    # python -V
    # pip -V
  sudo apt-get install python-pip python-dev python-virtualenv   # for Python 2.7
  # sudo apt-get install python3-pip python3-dev python-virtualenv # for Python 3.n

# Create a directory for the virtual environment and choose a Python interpreter
  mkdir ~/tensorflow  # somewhere to work out of
  cd ~/tensorflow
  # Choose one of the following Python environments for the ./venv directory:
  virtualenv --system-site-packages venv            # Use python default (Python 2.7)
  #virtualenv --system-site-packages -p python3 venv # Use Python 3.n
  
# Activate the Virtualenv environment
  source ~/tensorflow/venv/bin/activate      # bash, sh, ksh, or zsh
  
  ## within the virtual environment
  
      # Upgrade pip in virtual environment
      #python You can install other Python packages within the virtual environment without affecting packages outside the virtualenv.
        pip install -U pip
      
      # Use pip to install the package
      pip install -U tensorflow
      
      # Use pip list to show the packages installed in the virtual environment. Validate the install and test the version:
      python -c "import tensorflow as tf; print(tf.__version__)"

# Use the deactivate command to stop the Python virtual environment.
# deactivate


###-- Install cv-bridge, and camera driver --###
sudo apt-get install ros-kinetic-cv-bridge ros-kinetic-cv-camera


###-- usb_cam --###
sudo apt-get install ros-kinetic-usb-cam

###-- camera_calibration --###
# Need to calibrate the webcam before using (at least for the first time)
sudo apt-get install ros-kinetic-camera-calibration
