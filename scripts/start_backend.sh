#!/bin/bash

cd FARM-TODO-app/backend || exit
apt install python3.8-venv
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
pip3 install wheel
uvicorn main:app --host 0.0.0.0
