#!/bin/bash
echo "Installing source NPM dependencies..."
curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs
sudo yum -y install gcc-c++ make
node --version
sudo npm install pm2 -g -y
#pm2 start /home/ec2-user/app.js 

