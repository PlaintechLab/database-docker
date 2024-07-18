#!/bin/bash

echo "Starting generate password..."

#Random password generation
MYSQL_ROOT_PASSWORD=$(openssl rand -hex 64)
MYSQL_PASSWORD=$(openssl rand -hex 64)

# Echo password to .env file
echo "MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_PASSWORD=$MYSQL_PASSWORD
MYSQL_DATABASE=db
MYSQL_USER=user
DOCKER_NETWORK=backend
DB_IMAGE=mysql
DB_VERSION=latest" > .env

echo "Generate password success!"
