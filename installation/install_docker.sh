#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo rm get-docker.sh

# Create the docker group:
sudo groupadd docker

# Add your user to the docker group:
sudo usermod -aG docker $USER