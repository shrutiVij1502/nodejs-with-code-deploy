#!/bin/bash
echo "stopping the server"
#sudo pm2 stop app.js
sudo pm2 stop /home/ec2-user/appstart app.js 

