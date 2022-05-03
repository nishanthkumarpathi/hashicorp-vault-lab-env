#!/bin/bash

echo "Bring the Node UP"
docker-compose -f vault-docker-compose.yml up -d

echo "IP Address of the Container"
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
