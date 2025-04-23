#!/bin/bash

# Remove existing .venv if it exists
if [ -d ".venv" ]; then
  echo "Removing existing .venv..."
  rm -rf .venv
fi

# Create a new virtual environment
echo "Creating virtual environment..."
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Get full Python version (e.g., 3.10.12)
PYTHON_VERSION=$(python --version | awk '{print $2}')

echo "Using Python version: $PYTHON_VERSION"

# Install dependencies
echo "Installing requirements..."
poetry install
# Install Jupyter kernel with full version in display name
echo "Installing Jupyter kernel..."
kernel="PIPE DREAMS $PYTHON_VERSION"
python -m ipykernel install --user --name=.venv --display-name "$kernel"

echo ""
echo "✅ '.venv' created with Python: $PYTHON_VERSION"
echo "✅ Notebook kernel installed as : $kernel"
2