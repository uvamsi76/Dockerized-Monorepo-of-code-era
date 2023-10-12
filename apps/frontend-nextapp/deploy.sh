#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/codes-era_monorepo/Dockerized-Monorepo-of-codesera

echo moved to Dockerized-Monorepo-of-codesera
pwd
echo --------------------------------------------------

git pull origin main

echo git pulled
echo --------------------------------------------------

mv docker/frontend-nextapp/Dockerfile .

echo docker moved
echo --------------------------------------------------

sudo docker build . -t frontend-nextapp-docker

echo docker built
echo --------------------------------------------------

sudo docker run -d -p 3000:3000 frontend-nextapp-docker

echo docker ran

mv Dockerfile ./docker/backend
echo move back docker 

echo --------------------------------------------------
echo --------------------------------------------------
