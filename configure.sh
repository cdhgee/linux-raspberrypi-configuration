#!/bin/bash

CURRENT_USER=$(whoami)

if [[ $CURRENT_USER -ne "root" ]]
then
  echo "Script must be run as root!" >> /dev/stderr
  exit 1
fi

