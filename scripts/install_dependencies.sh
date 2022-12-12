#!/bin/bash
echo "Installing source NPM dependencies..."
npm install
pm2 start app.js 

