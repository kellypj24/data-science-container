#!/bin/bash

# Change directory to where your Python files are, if necessary
# cd /path/to/your/python/files

# Run black to format the files
black .

# Exit with the status of the last command
exit $?
