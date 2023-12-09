#!/bin/bash

# Build the base development environment image with Dockerfile configuration
docker build -t base_env .

# Prompt to enter the container's bash shell
read -p $'\e[94mDo you want to enter the container\'s bash shell? (y/n):\e[0m ' answer
if [ "$answer" == "y" ]; then
    docker run -it --rm base_env /bin/sh
fi
