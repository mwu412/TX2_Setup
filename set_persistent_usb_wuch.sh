#!/bin/bash

# source: https://github.com/mwu412/linux_tips/blob/master/udev__usb_static_name.md

# Create a file #
sudo touch /etc/udev/rules.d/99-usb-serial.rules

sudo echo "ACTION=="add", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="8037", SYMLINK+="solabot_micro"

ACTION=="add", ATTRS{idVendor}=="15d1", ATTRS{idProduct}=="0000", SYMLINK+="hokuyo"

ACTION=="add", ATTRS{idVendor}=="1b4f", ATTRS{idProduct}=="9d0f", SYMLINK+="razor_imu"
" >> /etc/udev/rules.d/99-usb-serial.rules

# load the new rule #
sudo udevadm trigger
