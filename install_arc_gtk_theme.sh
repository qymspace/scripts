#!/bin/bash
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key
sudo apt-key add - < Release.key 
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme
