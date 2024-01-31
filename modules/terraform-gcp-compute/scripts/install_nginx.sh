#! /bin/bash
sudo apt-get update 
sudo apt-get install -yq nginx
sudo systemctl enable nginx
sudo systemctl start nginx