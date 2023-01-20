#!/bin/bash

# ensure required directories exist, if not, create them
mkdir -p data
mkdir -p letsencrypt

# ensure docker package intalled
if ! command -v docker  &> /dev/null; then
    echo "The \"docker\" command could not be found - install docker and run this script again"
    exit
fi

# ensure docker-compose installed
if ! command -v docker-compose &> /dev/null; then
    echo "The \"docker-compose\" could not be found - install docker-compose and run this script again"
    exit
fi

# Bring up docker-compose to run in background (daemon)

FILE=docker-compose.yml

if [ -f "$FILE" ]; then
    # docker-compose.yml found, run docker-compose up -d
    cd docker
    sudo docker-compose up -d
else 
    echo "$FILE does not exist and is required. Exiting."
    exit
fi
