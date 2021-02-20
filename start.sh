#!/bin/bash
git clone https://github.com/shishkovda/grow-box-admin.git
cd grow-box-admin
mvn clean install
cd ..

git clone https://github.com/shishkovda/grow-box-admin-db.git

docker-compose build
docker-compose pull
docker-compose up
