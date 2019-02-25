# Docker-Mongo

This project helps you to create a to create a Mongo Server, a Linux machine with Mongo client in it and a Mongo-Express server using Docker.

## Installation

```sh
$ docker-compose build
$ docker-compose up
```

If you want to run docker-compose in detached mode run:

```sh
$ docker-compose up -d
```

## Container details

**Mongo server**:

You can access to this Mongo server using your prefered GUI or from your terminal, this are the details:
- Address: localhost:27017
- User: admin
- Password: admin


**Mongo express**:

To use this app just go to <http://localhost:8081/>

**Mongo client**:
To run commands in the mongo client of this container write
```sh
$ docker-compose exec mongo-client /bin/sh
```
## Mongo backup and restore

**Backup**
To backup the data in the Mongo database you just need to run the bashscript **backup-data.sh**
```sh
$ ./backup-data.sh
```
This script will create a .tar file in ./mongo-data-backup with a dump of the Mongo database. This .tar file will be named db-yyy-mm-dd.

**Restore**
To restore the data in the Mongo database you just need to run the bashscript **restore-data.sh** with the date of the backup file you want to restore
```sh
$ ./restore-data.sh yyyy-mm-dd
```
