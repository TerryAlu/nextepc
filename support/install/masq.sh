#!/bin/bash

DEFAULT_DEV="$(ip route | awk '/default/ { print $5  }')"

sudo sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
sudo iptables -t nat -A POSTROUTING -o $DEFAULT_DEV -j MASQUERADE
sudo iptables -I INPUT -i pgwtun -j ACCEPT
