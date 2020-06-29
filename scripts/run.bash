#!/bin/bash

# Check to see if there's a built `blork` image

# Check to see if `blork` is running
if docker ps -a | grep -q blork; 
then
  echo "Blork has been initialized!"
  if docker ps | grep -q blork;
  then
    echo "Blork already running, dropping into a shell!"
    docker exec -it blork bash
  else
    echo "Blork not running, starting then dropping into shell!"
    docker start blork
    docker exec -it blork bash
  fi
else
  echo "Blork not initialized, running blork!"
  docker run -it --network=host --name blork -v ~/.ssh/:/root/.ssh/ blork:latest bash
fi


