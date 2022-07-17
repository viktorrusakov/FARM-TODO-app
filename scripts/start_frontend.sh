#!/bin/bash

cd FARM-TODO-app/frontend || exit
apt install npm
npm install n -g
npm install serve -g
n stable
npm install
echo "API_BASE_URL=$(curl http://checkip.amazonaws.com)" | tee .env
npm run build
serve build
