#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/codes-era_monorepo/Dockerized-Monorepo-of-codesera
echo moved to Dockerized-Monorepo-of-codesera
pwd
echo --------------------------------------------------
git pull origin main
echo code pulled
echo --------------------------------------------------
mv docker/backend/Dockerfile .
echo moved docker file
echo --------------------------------------------------
sudo docker build . -t backend-docker
echo docker build
echo --------------------------------------------------
sudo docker run -d -p 3010:3010 backend-docker
echo docker running
echo --------------------------------------------------
mv Dockerfile ./docker/backend
echo move back docker
echo --------------------------------------------------
echo --------------------------------------------------
