#!/usr/bin/env bash
SRC_VOL_NAME=$1
DST_VOL_NAME=$2
# Third argument or the project name from the source volume (warning: Docker volumes created without Compose will be set to null)
PRJ_NAME=${3:$(docker volume inspect ${SRC_VOL_NAME} | jq -r '.[].Labels."com.docker.compose.project"')}

YAML_FILE=docker-compose-volume-copy$(date -d "today" +"%Y%m%d%H%M").yaml
sed 's/\${DST_VOL_NAME}/'${DST_VOL_NAME}'/' ./docker-compose-volume-copy.yaml.template > ${YAML_FILE}

docker compose -p ${PRJ_NAME} -f ${YAML_FILE} up
docker compose -p ${PRJ_NAME} -f ${YAML_FILE} down
