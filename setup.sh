#!/bin/bash

# Get the directory where the script resides
SCRIPT_DIR="$(dirname "$0")"

# Check if Python is installed
if ! python --version > /dev/null 2>&1; then
    echo "Python is not installed. Please install Python and try again."
    exit 1
fi

python --version

# Check if virtualenv is installed
if ! python -m virtualenv --version > /dev/null 2>&1; then
    echo "virtualenv is not installed. Install it using 'pip install virtualenv' and try again."
    exit 1
fi

python -m virtualenv --version

# Check if venv directory already exists in the script directory
if [ -d "$SCRIPT_DIR/venv" ]; then
    echo "'venv' already exists in script directory."
    # Activate the virtual environment
    source "$SCRIPT_DIR/venv/bin/activate"
else
    # Create virtual environment in the script directory
    python -m virtualenv "$SCRIPT_DIR/venv" || { echo "Error creating virtual environment."; exit 1; }

    # Activate the virtual environment
    source "$SCRIPT_DIR/venv/bin/activate" || { echo "Error activating the virtual environment."; exit 1; }

    # Install packages from requirements.txt in the script directory
    pip install -r "$SCRIPT_DIR/requirements.txt" || { echo "Error installing packages from requirements.txt."; exit 1; }
fi

# Validate all required packages are installed
missing=false
while IFS="==" read -r lib _; do
    echo "check installation status of $lib"
    if ! pip show "$lib" > /dev/null 2>&1; then
        echo "Missing library: $lib"
        missing=true
    fi
done < "$SCRIPT_DIR/requirements.txt"

if $missing; then
    echo "Some libraries from requirements.txt are not installed. Check above for missing libraries."
    exit 1
fi

echo "All done successfully!"
exit 0
