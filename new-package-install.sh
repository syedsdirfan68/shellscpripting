#!/bin/bash

if [ $# -eq 0 ]; then
	    echo "Usage: $0 <package-name>"
	        exit 1
fi

echo "Installing $1..."

sudo apt-get install "$1" -y

if [ $? -eq 0 ]; then
	    echo "Successfully installed $1."

	        if systemctl list-unit-files | grep -q "^$1.service"; then
			        sudo systemctl status "$1" --no-pager
				    else
					            echo "$1 is not a systemd service."
						        fi
						else
							    echo "Installation failed."
fi
