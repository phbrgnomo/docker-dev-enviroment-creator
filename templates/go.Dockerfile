FROM ubuntu:latest

# Upgrade existing packages, Install additional packages, and clean cache 
RUN apt-get update && \
    apt-get install -y \
        apt-utils \
        git \
        nano \
        tree \
        net-tools \
        jq && \
    apt-get full-upgrade -y &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /code_dev

# Copy the current directory contents into the container at /app

COPY . /code_dev

# Set the default command to keep the container running
CMD ["sh", "-c", "while true; do echo 'Container is running...'; sleep 10; done"]

