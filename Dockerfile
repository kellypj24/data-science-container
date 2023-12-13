# Use the official Python 3.11 image as a base
FROM python:3.11

# Set the working directory to /app within the container
WORKDIR /app

# Copy the pyproject.toml file to the container
COPY pyproject.toml /app/

# Install Poetry for Python package management
RUN pip install poetry

# Disable creation of virtual environments by Poetry
RUN poetry config virtualenvs.create false

# Install Python dependencies specified in pyproject.toml
RUN poetry install --no-dev

# Copy the rest of your application
COPY . /app

CMD ["python", "app.py"]
