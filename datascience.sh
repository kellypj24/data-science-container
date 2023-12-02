#!/bin/bash

# Pull the latest changes from the repository
git pull

# Build the Docker image
docker build -t my-data-science-app .

# Run the Docker container
docker run -p 8888:8888 my-data-science-app
