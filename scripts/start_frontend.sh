#!/bin/bash

cd ~/FARM-TODO-app/frontend || exit
apt install npm -y
npm install n -g -y
npm install serve -g -y
n stable
npm install
echo "API_BASE_URL=$(curl http://checkip.amazonaws.com)" | tee .env
npm run build
serve build
