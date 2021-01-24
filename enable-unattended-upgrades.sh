#!/bin/bash

# Update apt indexes
apt update

# Install packages
#   unattended-upgrades - automates apt updates
#   update-notifier common - automates reboots when needed
apt install unattended-upgrades update-notifier-common -y

# Copy config files
cp ./config-files/20auto-upgrades /etc/apt/apt.conf.d/20auto-upgrades
cp ./config-files/50unattended-upgrades /etc/apt.conf.d/50unattended-upgrades

# Enable unattended upgrades
dpkg-reconfigure --priority=low unattended-upgrades
