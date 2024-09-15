#!/bin/bash

#APT install 
sudo apt-get update 
sudo apt-get install python3 python3-pip -y 

#Create python virtual environment 
python3 -m venv venv
source venv/bin/activate

#performance pip instilation 
pip3 install -r requirements.txt
pip3 install pytest pytest-cov flask_testing