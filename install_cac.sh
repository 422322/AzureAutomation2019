#!/bin/bash -ex
sudo apt-get -y update
sudo apt-get install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo apt-get install -y npm
sudo apt-get install -y nodejs
sudo apt-get install -y git
mkdir /home/webapp
cd /home/webapp
git clone https://github.com/TimothySealy/cac-simple-webapp.git
cd cac-simple-webapp
echo PORT=80 >> /etc/environment
export PORT=80
sudo npm install
sudo npm run start &
