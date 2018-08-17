#!/bin/bash

#--become root--#
sudo su
#--restoring backup file--#
tar xvpfz backup.tgz -C /
#--if bz2 is used--#
#tar xvpfj backup.tar.bz2 -C /
#--create the directories being excluded on backing up--#
mkdir proc
mkdir lost+found
mkdir mnt
mkdir sys
#etc...
