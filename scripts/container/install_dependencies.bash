#!/bin/bash

apt-get update >> /dev/null

# Install system dependencies
while IFS="" read -r p || [ -n "$p" ]
do
  apt-get --yes install "$p"
done < system_dependencies.txt