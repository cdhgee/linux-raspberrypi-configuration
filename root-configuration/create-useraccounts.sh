#!/bin/bash

sudo adduser --disabled-password --gecos "David Gee," david
echo "Choose a password for user 'david':"
sudo passwd david
sudo usermod -aG sudo david
