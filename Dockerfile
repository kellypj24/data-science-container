# Use Python 3.11 slim variant as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container at /usr/src/app
COPY requirements.txt ./

# Copy the data science directory
COPY datascience/ /usr/src/app/datascience/ 

# Install system dependencies required for building Python packages
RUN apt-get update && \
    apt-get install -y gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*

# Install git version control in the container
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*


# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8888 for Jupyter Notebooks or other tools
EXPOSE 8888

# Define the default command to run when starting the container
# This can be customized based on the main application of your project
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]

