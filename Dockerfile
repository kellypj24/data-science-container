FROM python:3.11

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /workspace

# Copy the contents of the local workspace folder to the container's workspace folder
COPY . /workspace
