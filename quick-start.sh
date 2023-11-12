#!/bin/bash

echo "Starting database..."

docker-compose up -d database

STATUS="starting"

while [ "$STATUS" != "healthy" ]
do
    STATUS=$(docker inspect --format {{.State.Health.Status}} database)
    echo "database state = $STATUS"
    sleep 5
doneå

echo "Starting phpmyadmin..."
docker-compose up -d phpmyadmin
echo "Phpmyadmin started!"