#!/bin/bash

cd ~ && git clone https://github.com/viktorrusakov/FARM-TODO-app.git && cd FARM-TODO-app/scripts || exit

chmod u+x ./start_frontend.sh ./start_backend.sh ./install_mongodb.sh

./install_mongodb.sh && (./start_frontend.sh & ./start_backend.sh)
