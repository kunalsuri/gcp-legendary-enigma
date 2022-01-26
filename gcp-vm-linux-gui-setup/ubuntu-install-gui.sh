#!/bin/bash
echo ''
echo '==== This script will install and enable the GUI on your Ubuntu Server.'
echo '==== This script will also create a user account to allow Remote Desktop Connections.'
echo ''
echo '==== The username entered is: ' $1
echo '==== The password entered is: ' $2
echo ''

echo '==== To allow the system to be updated/upgraded.'
echo ''
sudo apt update
sudo apt upgrade -y
echo ''

echo '==== The installation of the following packages will take place'
echo ''
sudo apt install -y gnome-shell	ubuntu-gnome-desktop autocutsel xrdp
echo ''
echo '==== Enabling the xrdp...'
echo ''
sudo systemctl enable xrdp
echo ''
sudo apt install -y gnome-core gnome-panel synaptic

touch ~/.Xresources

sudo adduser  --disabled-password --gecos "GUI User" $1

echo "$1:$2" | sudo chpasswd
echo ''
echo '==== Istallation completed. Thanks!'
