#!/bin/bash

<<comment

"This shell script will take any package as an argument and it will install that package"

comment

echo "Installing $1"

sudo apt-get install $1 -y

echo "Successfully Installed $1"

sudo systemctl status $1


