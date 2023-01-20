#!/bin/bash

container_name = nginx-proxy-manager

# ensure docker package intalled
if ! command -v docker  &> /dev/null
then
    echo "The \"docker\" command could not be found - install docker and run this script again"
    exit
fi

# ensure docker-compose installed
if ! command -v docker-compose &> /dev/null; then
    echo "The \"docker-compose\" could not be found - install docker-compose and run this script again"
    exit
fi

# ensure container is actually running
if [ "$( docker container inspect -f '{{.State.Status}}' $container_name )" == "running" ]; then 
   echo "Shutting down container $conatainer_name now"
   cd docker
   docker-compose down
fi
