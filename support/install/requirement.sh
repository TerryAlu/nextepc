#!/bin/bash

# install mongodb
sudo apt-get update
sudo apt-get -y install mongodb
sudo systemctl start mongodb

# install nodejs
sudo apt-get -y install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get -y install nodejs

# Notice:
# The mongod bind to localhost by default. 
# To bind to all IPv4 addresses, edit config file and change bind_ip from 127.0.0.1 to 0.0.0.0
#
# Mongodb Config File: /etc/mongodb.conf
# Reference: https://docs.mongodb.com/manual/reference/program/mongod://docs.mongodb.com/manual/reference/program/mongod/#cmdoption-mongod-bind-ip 

# install dependency
sudo apt-get -y install git gcc flex bison make autoconf libtool pkg-config libsctp-dev libssl-dev libgnutls-dev libidn11-dev libyaml-dev
sudo apt-get -y install libgcrypt20-dev

# install mongodb-c driver
wget https://github.com/mongodb/mongo-c-driver/releases/download/1.8.0/mongo-c-driver-1.8.0.tar.gz
sudo apt-get -y install g++ libsasl2-dev
tar xzf mongo-c-driver-1.8.0.tar.gz
cd mongo-c-driver-1.8.0
./configure --disable-automatic-init-and-cleanup
make -j `nproc`
sudo make install
sudo ldconfig

# Notice:
# If the disk size < 3.3G, append --smallfiles options after ExecStart field in mongodb service file.
# Otherwise, mongodb won't be start up normally with error code 100.
#
# Mongodb Service File: /lib/systemd/system/mongodb.service
# Reference: https://stackoverflow.com/questions/14584393/why-getting-error-mongod-dead-but-subsys-locked-and-insufficient-free-space-for/26878915
