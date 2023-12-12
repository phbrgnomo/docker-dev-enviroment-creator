## Overview

This repository streamlines the process of creating and building Docker projects.
The main goal is to organize and quickly deploy new projects configured to be used with the [Dev Conatiner VSCode plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers).

### Contents:

- templates/ - Where the dockerfiles and docker-compose templates live.
- newproject.sh - creates a new folder (if doesnt exist) and prepare it with the chosen docker context files
- build.sh - build the container using the desired engine and start the container

The `Dockerfile` on the root folder is a sample to test and try different context files

#### Instructions

##### newproject.sh

This script creates a new project folder, copying a Dockerfile and a docker-compose file based on the specified template. If no template is provided, it defaults to using a base Dockerfile. The script also checks for existing project folders to avoid overwriting.

###### Usage

```bash
./newproject.sh <project_name> <template_name>
```
- **`<project_name>`**: The name of your new project.
- **`<template_name>`**: *(Optional)* The name of the template to use. It will copy the respective templates from the `/templates` folder If not provided, it defaults to the base template.

##### build.sh

This script builds the Docker image for your project based on the Dockerfile in the project folder.

##### Usage

```bash
./build.sh <build_engine> <context_file>
```
- **`<build_engine>`:** Defines what engine will be used to build the container(s). Parameters:
    - `dockerfile` - Use `docker build` to build and `docker run` to start the container
    - `compose` - Use `docker-compose up` to build and start the container(s).
- **`<context_file>`:** (Optional) If `dockerfile` is used as engine, this parameter can be used to specify which context file will be used for the build.

## Getting Started
1. Clone this repository to your local machine:

```bash
git clone https://github.com/your-username/your-repository.git
cd your-repository
```
2. Make the scripts executable:

```bash
chmod +x newproject.sh build.sh
```

3. Use newproject.sh to create a new project:
```bash
./newproject.sh my_project python
```

4. Build the project container with build.sh:

```bash
./build.sh dockerfile python
```

**NOTE**: Check for the need of a `.env` for each template to proper set the appropriate user permissions

## Customization
- **Templates:** You can add custom templates in the **'templates'** folder. Each template should have **<template_name>**.Dockerfile and **<template_name>**.docker-compose.yml as their file names.
- **Script Modification:** Feel free to modify the scripts to suit your specific needs or add more functionality.

## Contributing

Feel free to contribute by opening issues or creating pull requests. Your feedback and improvements are highly appreciated!

License
This project is licensed under the MIT License.