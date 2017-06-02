#!/bin/bash

echo 'Build docker images'
docker-compose up --build -d
web_port=$(docker-compose port web 80)
web_port=${web_port#*:}



echo 'Install Magento'

docker-compose exec --user magento2 web m2init magento:install --no-interaction --webserver-home-port=$web_port 