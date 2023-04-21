#!/usr/bin/env bash
./docker-compose-volume-copy.sh $1 $1_TMP $2
docker volume rm $1
./docker-compose-volume-copy.sh $1_TMP $1 $2
docker volume rm $1_TMP
