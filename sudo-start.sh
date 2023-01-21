#!/bin/bash

# set up variables
DIRECTORY=docker
FILE=docker-compose.yml
CLONE_MSG="Use \"git clone https://github.com/kyle-thdi/nginx-reverse-proxy-in-docker.git\" again to ensure you have all required files"

# ensure required directories exist, if not, create them
mkdir -p data
mkdir -p letsencrypt

# ensure docker package intalled
if ! command -v docker  &> /dev/null; then
    echo "The \"docker\" command could not be found. $CLONE_MSG."
    exit
fi

# ensure docker-compose installed
if ! command -v docker-compose &> /dev/null; then
    echo "The \"docker-compose\" could not be found. $CLONE_MSG."
    exit
fi

# ensure docker directory exists
if [ ! -d "$DIRECTORY" ]; then
  echo "The $DIRECTORY directory does not exist and is required. $CLONE_MSG."
  exit
fi

# change to docker directory and ensure that docker-install.yml exits

cd $DIRECTORY

if [ -f "$FILE" ]; then
    # docker-compose.yml found, run docker-compose up -d
    sudo docker-compose up -d
else 
    echo "$FILE does not exist and is required. $CLONE_MSG."
    exit
fi
