#!/bin/bash

read -p " Enter the file path:" filepath

if [ -d $filepath ]; then
	echo " File Exist "
else
	echo " File does not Exist "	
fi	
