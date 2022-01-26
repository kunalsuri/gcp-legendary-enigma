#!/bin/bash

echo '==== This script will install the GUI on your Ubuntu Server. ===='
echo '==== It will also create a user account for enabling Remote Desktop Connections ===='
echo '==== Username: ' $1
echo '==== Password: ' $2

echo ''

echo '==== Upgrade system ===='
sudo apt update
sudo apt upgrade -y

echo '==== System Updated Service Completed. ===='
