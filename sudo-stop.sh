#!/bin/bash

# set up variables
DIRECTORY=docker
FILE=docker-compose.yml
CONTAINER_NAME=nginx-proxy-manager
CLONE_MSG="Use \"git clone https://github.com/kyle-thdi/nginx-reverse-proxy-in-docker.git\" again to ensure you have all required files"

# ensure docker directory exists
if [ ! -d "$DIRECTORY" ]; then
  echo "The $DIRECTORY directory does not exist and is required. $CLONE_MSG."
  exit
fi

# change to docker directory and ensure that docker-install.yml exits

cd $DIRECTORY

if [ ! -f "$FILE" ]; then
  echo "$FILE does not exist and is required. $CLONE_MSG."
  exit
fi

# ensure docker package intalled
if ! command -v docker  &> /dev/null; then
    echo "The \"docker\" command could not be found - install docker and run this script again"
    exit
fi

# ensure docker-compose installed
if ! command -v docker-compose &> /dev/null; then
    echo "The \"docker-compose\" command could not be found - install docker-compose and run this script again"
    exit
fi

# ensure container exists and is actually running
if [ $( docker ps -a | grep $CONTAINER_NAME | wc -l ) -gt 0 ]; then
    if [ "$( docker container inspect -f '{{.State.Status}}' $CONTAINER_NAME )" == "running" ]; then 
        echo "Stopping container $CONTAINER_NAME now"
        sudo docker stop $CONTAINER_NAME
    else
        echo "$CONTAINER_NAME is not running so there is nothing to stop"
        exit;
    fi
else
  echo "$CONTAINER_NAME is not running so there is nothing to stop"
  exit;
fi
