#!/bin/bash

echo $0

CURRENT_USER=$(whoami)

if [[ $CURRENT_USER != "root" ]]
then
  echo "Script must be run as root!" >> /dev/stderr
  exit 1
fi

# Update apt indexes
apt update

# Install unattended-upgrades package
apt install unattended-upgrades -y

# Copy config files
cp config-files/20auto-upgrades /etc/apt/apt.conf.d
