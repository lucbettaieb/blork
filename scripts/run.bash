#!/bin/bash

# Check to see if there's a built `blork` image

# Check to see if `blork` is running

docker run -it --network=host --name blork -v ~/.ssh/:/root/.ssh/ blork:latest bash
