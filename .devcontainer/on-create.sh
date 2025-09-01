#!/bin/bash
set -e

# This script is run during the container creation process.

# Update packages and clean up
apt-get update
apt-get upgrade -y
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*

# update timezone 
ln -fs /usr/share/zoneinfo/Europe/Vienna /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

# Create a timestamp file to indicate when the image was last built
mkdir -p "$(dirname "/usr/local/share/majikmate/codespace-image-created")"
touch /usr/local/share/majikmate/codespace-image-created
