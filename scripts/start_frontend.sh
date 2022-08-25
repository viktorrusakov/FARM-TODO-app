#!/bin/bash

echo "Waiting for backend to launch on 8000..."

while ! nc -z localhost 8000; do
  sleep 0.5 # wait for 1/10 of the second before check again
done

echo "Backend launched"

cd ~/FARM-TODO-app/frontend || exit
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install nodejs -y
npm install serve -g -y
npm install
echo "REACT_APP_API_BASE_URL='http://$(curl http://checkip.amazonaws.com):8000'" | tee .env
npm run build
serve build
