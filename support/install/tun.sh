#!/bin/bash
sudo sh -c "cat << EOF > /etc/network/interfaces.d/nextepc
auto pgwtun
iface pgwtun inet static
    address 45.45.0.1
    netmask 255.255.0.0
    pre-up ip tuntap add name pgwtun mode tun
    post-down ip tuntap del name pgwtun mode tun
iface pgwtun inet6 static
    address cafe::1
    netmask 64
EOF"

sudo sh -c 'if ! grep "source-directory" /etc/network/interfaces | grep "/etc/network/interfaces.d" > /dev/null; then
    echo "source-directory /etc/network/interfaces.d" >> /etc/network/interfaces
fi'

sudo ifup pgwtun
