#!/bin/bash

apt install dnscrypt-proxy

cp config-files/dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml
cp config-files/dnscrypt-proxy.socket /usr/lib/systemd/system/dnscrypt-proxy.socket

systemctl restart dnscrypt-proxy
