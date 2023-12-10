FROM alpine:latest

# Upgrade existing packages, Install additional packages, and clean cache 

# Set the working directory
WORKDIR /code_dev

# Copy the current directory contents into the container at /app

COPY . /code_dev

# Set the default command to keep the container running
# CMD ["sh", "-c", "while true; do echo 'Container is running...'; sleep 10; done"]

