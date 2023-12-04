#!/bin/bash

# Optional: Pull the latest changes from your Git repository
# git pull

# Build the Docker image with the latest changes
docker build -t my-data-analysis-env .

# Run the Docker container
# -p [LocalPort]:[ContainerPort] maps a local port to a port in the container
# --rm removes the container when it's stopped
# -it allows interactive processes (like a Jupyter notebook)
docker run -p 8888:8888 --rm -it my-data-analysis-env

