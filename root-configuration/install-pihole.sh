#!/bin/bash

git clone --depth 1 https://github.com/pi-hole/pi-hole.git pi-hole
ipv4=`ip -4 address show dev eth0 | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}/[0-9]{2}"`
ipv6=`ip addr show dev eth0 | grep global | sed -e 's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d'`
cp config-files/setupVars.conf.template config-files/setupVars.conf
echo "IPV4_ADDRESS=$ipv4" >> config-files/setupVars.conf
echo "IPV6_ADDRESS=$ipv6" >> config-files/setupVars.conf

mkdir -p /etc/pihole
cp config-files/setupVars.conf /etc/pihole/setupVars.conf
./pi-hole/automated\ install/basic-install.sh --unattended
pihole -a -p
