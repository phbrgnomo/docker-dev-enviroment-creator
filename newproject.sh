#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <project_name> <template>(Optional)"
    exit 1
fi

# Check if the project folder already exists
if [ -d "$1" ]; then
    echo -e "\e[91mError:\e[0m Project folder \e[93m'$1'\e[0m already exists. Choose a different project name."
    exit 1
fi

# Create a new project folder
mkdir "$1"

# Check if a template name is provided
if [ -n "$2" ]; then
    template=$2

    # Check if template files exist, otherwise create empty templates
    if [ -f "templates/${template}.Dockerfile" ]; then
        cp "templates/${template}.Dockerfile" "$1/Dockerfile"
        echo -e "\e[92mSuccess:\e[0m Using template \e[93m'${template}.Dockerfile'\e[0m."
    else
        echo -e "\e[93mWarning:\e[0m Template ${template}.Dockerfile not found. Using base Dockerfile."
        cp "Dockerfile" "$1/"
        echo -e "\e[92mSuccess:\e[0m Base Dockerfile copied to the project folder."
    fi

    if [ -f "templates/${template}.docker-compose.yml" ]; then
        cp "templates/${template}.docker-compose.yml" "$1/docker-compose.yml"
        echo -e "\e[92mSuccess:\e[0m Using template \e[93m'${template}.docker-compose.yml'\e[0m."
    else
        echo -e "\e[93mWarning:\e[0m Template ${template}.docker-compose.yml not found. Creating empty docker-compose.yml."
        touch "$1/docker-compose.yml"
        echo -e "\e[92mSuccess:\e[0m Empty docker-compose.yml created in the project folder."
    fi
fi

# Optionally, open VSCode in the new project folder
# code .

echo -e "\e[92mSuccess:\e[0m Project \e[93m'$1'\e[0m created successfully. Happy coding!"
