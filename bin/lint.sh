#!/bin/bash

# Change directory to where your Python files are, if necessary
# cd /path/to/your/python/files

# Run black in check mode
black --check .

# Exit with the status of the last command
exit $?
