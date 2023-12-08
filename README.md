## Overview

This repository provides two handy scripts to streamline the process of creating and building Docker projects.

### newproject.sh

This script creates a new project folder, copying a Dockerfile and a docker-compose file based on the specified template. If no template is provided, it defaults to using a base Dockerfile. The script also checks for existing project folders to avoid overwriting.

#### Usage

```bash
./newproject.sh <project_name> <template_name>
```
- **'<project_name>'**: The name of your new project.
- **'<template_name>'**: *(Optional)* The name of the template to use. If not provided, it defaults to the base template.

### build.sh

This script builds the Docker image for your project based on the Dockerfile in the project folder. Additionally, it provides an option to enter the bash shell of the built image for interactive use.

#### Usage

```bash
./build.sh [shell]
```
- **'shell':** *(Optional)* If provided, it opens an interactive bash shell inside the built image.

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

Build the project container with build.sh:

```bash
./build.sh
```

## Customization
- **Templates:** You can add custom templates in the **'templates'** folder. Each template should have **<template_name>**.Dockerfile and **<template_name>**.docker-compose.yml as their file names.
- **Script Modification:** Feel free to modify the scripts to suit your specific needs or add more functionality.
