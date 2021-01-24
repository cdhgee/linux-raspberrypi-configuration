#!/bin/bash

CURRENT_USER=$(whoami)

if [[ $CURRENT_USER != "root" ]]
then
  echo "Script must be run as root!" >> /dev/stderr
  exit 1
fi

