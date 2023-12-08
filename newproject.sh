#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <project_name> <template>(Optional)"
    exit 1
fi

# Check if the project folder already exists
if [ -d "$1" ]; then
    echo "Warning: Project folder '$1' already exists. Choose a different project name."
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
    else
        echo "Warning: Template ${template}.Dockerfile not found. Using base Dockerfile."
        cp "Dockerfile" "$1/"
        echo "Base Dockerfile copied to the project folder."
    fi

    if [ -f "templates/${template}.docker-compose.yml" ]; then
        cp "templates/${template}.docker-compose.yml" "$1/docker-compose.yml"
    else
        echo "Warning: Template ${template}.docker-compose.yml not found. Creating empty docker-compose.yml."
        touch "$1/docker-compose.yml"
        echo "Empty docker-compose.yml created in the project folder."
    fi
fi

# Optionally, open VSCode in the new project folder
# code .

echo "Project '$1' created successfully. Happy coding!"
