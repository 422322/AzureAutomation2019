#!/bin/bash -ex
apt-get -y update
apt-get install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
apt-get install -y npm
apt-get install -y nodejs
apt-get install -y git
mkdir /home/webapp
cd /home/webapp
git clone https://github.com/TimothySealy/cac-simple-webapp.git
cd cac-simple-webapp
echo PORT=80 >> /etc/environment
export PORT=80
npm install
npm run start &
