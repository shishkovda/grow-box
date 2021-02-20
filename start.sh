#!/bin/bash
git clone https://github.com/shishkovda/grow-box-admin.git
cd grow-box-admin
git pull
mvn clean install
cd ..

git clone https://github.com/shishkovda/grow-box-admin-db.git
cd grow-box-admin-db
git pull
cd ..

docker-compose build
docker-compose pull
docker-compose up
