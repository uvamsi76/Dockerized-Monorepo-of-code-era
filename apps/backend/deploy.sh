#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/dockerdeploy
git pull origin main
mv docker/backend/Dockerfile .
sudo docker build . -t backend-docker
sudo docker run -d -p 3010:3010 backend-docker
