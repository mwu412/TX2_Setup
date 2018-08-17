#!/bin/bash
#--ref:https://ubuntuforums.org/showthread.php?t=35087--#

#--become root--#
sudo su
#--go to root of the filesystem--#
cd /
tar cvpzf backup.tgz --exclude=/proc --exclude=/lost+found --exclude=/backup.tgz --exclude=/mnt --exclude=/sys /
#--for higher compression--#
#tar cvpjf backup.tar.bz2 --exclude=/proc --exclude=/lost+found --exclude=/backup.tar.bz2 --exclude=/mnt --exclude=/sys /
