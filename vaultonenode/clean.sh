#!/bin/bash

echo "Cleaning the Setup"

docker-compose -f vault-docker-compose.yml down

docker stop $(docker ps -a -q)

echo "Delete Docker Container Data"
sudo rm -rf vaultsetup/data

echo "Deleting Logs of the Old Container"
sudo rm -rf vaultsetup/logs

docker network prune -f