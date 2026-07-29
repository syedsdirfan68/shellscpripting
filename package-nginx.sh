s script checks if Nginx is installed.
If it is installed, it removes it.
Then it installs a fresh copy of Nginx,
starts the service, and displays its status.
comment

PACKAGE="nginx"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
	    echo "$PACKAGE is already installed."
	        echo "Removing existing installation..."

		    sudo systemctl stop "$PACKAGE"
		        sudo apt-get remove --purge -y "$PACKAGE"
			    sudo apt-get autoremove -y

			        echo "$PACKAGE removed successfully."
			else
				    echo "$PACKAGE is not installed."
fi

echo "Installing $PACKAGE..."

sudo apt-get update
sudo apt-get install -y "$PACKAGE"

if [ $? -eq 0 ]; then
	    echo "$PACKAGE installed successfully."

	        sudo systemctl enable "$PACKAGE"
		    sudo systemctl start "$PACKAGE"

		        echo "Service Status:"
			    sudo systemctl status "$PACKAGE" --no-pager
		    else
			        echo "Installation failed."
fi
