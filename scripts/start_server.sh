#!/bin/bash
echo "starting the server"
sudo pm2 stop /home/ec2-user/appstart app.js 
