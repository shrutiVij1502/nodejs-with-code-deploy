#!/bin/bash
echo "Installing source NPM dependencies..."
#npm install
#node /home/ec2-user/app.js
pm2 start /home/ec2-user/app.js 

