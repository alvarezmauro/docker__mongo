#!/bin/bash

date_suffix=${1}

docker-compose exec -T mongo-server sh -c 'mongorestore -u admin -p admin --archive' < ./mongo-data-backup/db-${date_suffix}.dump