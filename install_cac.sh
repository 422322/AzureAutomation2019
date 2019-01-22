#!/bin/bash -ex
sudo apt-get -y update
sudo apt-get install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo apt-get install -y npm
sudo apt-get install -y nodejs
sudo apt-get install -y git
sudo mkdir /home/webapp
sudo cd /home/webapp
sudo git clone https://github.com/TimothySealy/cac-simple-webapp.git
sudo cd cac-simple-webapp
sudo echo PORT=80 >> /etc/environment
sudo export PORT=80
sudo npm install
sudo npm run start &
