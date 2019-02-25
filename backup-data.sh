#!/bin/bash

date_suffix=$(date '+%Y-%m-%d')

docker-compose exec -T mongo-server sh -c 'mongodump -u admin -p admin --archive' > ./mongo-data-backup/db-${date_suffix}.dump