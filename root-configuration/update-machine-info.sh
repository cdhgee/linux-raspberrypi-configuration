#!/bin/bash

echo "Choose a hostname:"
read machinename
sudo hostnamectl set-hostname $machinename

sudo timedatectl set-timezone America/Chicago
