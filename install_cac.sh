#!/bin/bash -ex
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y npm
sudo yum install -y nodejs
sudo yum install -y git
sudo mkdir /home/webapp
sudo cd /home/webapp
sudo git clone https://github.com/TimothySealy/cac-simple-webapp.git
sudo cd cac-simple-webapp
sudo echo PORT=80 >> /etc/environment
sudo export PORT=80
sudo npm install
sudo npm run start &
