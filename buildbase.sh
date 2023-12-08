#!/bin/bash

# Build the base development environment image with Dockerfile configuration
docker build -t base_env .


# Prompt to enter the bash shell
:<<'COMMENT'
read -p "Do you want to enter the container's bash shell? (y/n): " answer
if [ "$answer" == "y" ]; then
    docker run -it --rm base_env /bin/sh
fi
COMMENT
