#!/bin/bash

git clone https://github.com/viktorrusakov/FARM-TODO-app.git

install_mongodb.sh & start_frontend & start_backend
