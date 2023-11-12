#!/bin/bash

echo "Starting generate password..."

#Random password generation
MYSQL_ROOT_PASSWORD=$(openssl rand -base64 64)
MYSQL_PASSWORD=$(openssl rand -base64 64)

# Echo password to .env file
echo "MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
MYSQL_PASSWORD=$MYSQL_PASSWORD" > .env

echo "Generate password success!"
