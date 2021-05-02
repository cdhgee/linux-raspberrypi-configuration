#!/bin/bash


# Drop into the directory in which this script resides, in case the script is
# being called from elsewhere
cd "$(dirname "${BASH_SOURCE[0]}")"

CURRENT_USER=$(whoami)

if [[ $CURRENT_USER != "root" ]]
then
  echo "Script must be run as root!" >> /dev/stderr
  exit 1
fi

./enable-unattended-upgrades.sh
