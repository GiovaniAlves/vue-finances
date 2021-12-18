#!/bin/bash

# ./compose.sh "up -d" .env.prod

# $0 = ./compose.sh
# $1 = "up -d"
# $2 = .env.prod

echo "Running docker-compose $1 ..."

yes | cp $2 .env

docker-compose -f docker-compose.yml -f docker-compose.prod.yml $1