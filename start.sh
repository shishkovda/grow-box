#!/bin/bash
git clone https://github.com/shishkovda/grow-box.git
cd grow-box
git pull

git clone https://github.com/shishkovda/grow-box-admin.git
cd grow-box-admin
git pull
mvn clean install
cd ..

git clone https://github.com/shishkovda/grow-box-admin-db.git
cd grow-box-admin-db
git pull
cd ..

sudo docker-compose build
sudo docker-compose pull
sudo docker-compose up
