#!/bin/bash

cd ~ && git clone https://github.com/viktorrusakov/FARM-TODO-app.git && cd FARM-TODO-app/scripts || exit

install_mongodb.sh & start_frontend & start_backend
