#!/bin/bash

echo '==== This script will install the GUI on your Ubuntu Server. ===='
echo '==== It will also create a user account for enabling Remote Desktop Connections ===='
echo '==== Username: ' $1
echo '==== Password: ' $2

echo ''

echo '==== Upgrade system ===='
sudo apt update
sudo apt upgrade -y

echo '==== Install packages ===='
sudo apt install -y gnome-shell
sudo apt install -y ubuntu-gnome-desktop
sudo apt install -y autocutsel
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo apt install -y gnome-core
sudo apt install -y gnome-panel
sudo apt install -y synaptic

touch ~/.Xresources

sudo adduser  --disabled-password --gecos "GUI User" $1
echo "$1:$2" | sudo chpasswd
