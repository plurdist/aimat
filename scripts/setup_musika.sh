#!/bin/bash

# Set script directory to ensure it runs from anywhere
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_DIR="$SCRIPT_DIR/../docker"
LISTENER_SCRIPT="$SCRIPT_DIR/listener.py"  # Adjust to actual listener script path
CONDA_ENV="aimt"  # Your Conda environment name

# Define Docker image and container details
dockerImage="plurdist/musika:latest"
containerName="musika-container"
composeFile="$DOCKER_DIR/docker-compose.yml"

echo "Checking environment setup..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker Desktop and restart your system."
    exit 1
fi

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "Docker is not running. Please start Docker Desktop."
    exit 1
fi

# Check if Docker Compose is available
if ! command -v docker-compose &> /dev/null && ! command -v docker compose &> /dev/null; then
    echo "Docker Compose is not installed. Install it before proceeding."
    exit 1
fi

# Ensure the output directory exists
outputPath="${HOME}/musika_outputs"
if [ ! -d "$outputPath" ]; then
    mkdir -p "$outputPath"
    echo "Created output directory: $outputPath"
fi

# Check if docker-compose.yml exists in the correct directory
if [ ! -f "$composeFile" ]; then
    echo "Missing docker-compose.yml file! Ensure it is in $DOCKER_DIR"
    exit 1
fi

# Change to the correct Docker directory
cd "$DOCKER_DIR" || exit

# Pull the latest Musika image
echo "Pulling latest Musika image..."
docker pull "$dockerImage"

# Create (but do not start) the container
echo "Creating Musika container..."
docker compose up --no-start --force-recreate --remove-orphans

# Verify if the Container is Created
runningContainer=$(docker ps -a --filter "name=$containerName" -q)

if [ -n "$runningContainer" ]; then
    echo "Musika container has been created successfully."
else
    echo "Something went wrong. Check logs: docker logs $containerName"
    exit 1
fi

# Activate Conda environment and start listener script
echo "Activating Conda environment and starting listener..."
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate "$CONDA_ENV"

if [ $? -eq 0 ]; then
    echo "Conda environment activated successfully."
    echo "Starting listener script..."
    python "$LISTENER_SCRIPT"
else
    echo "Failed to activate Conda environment. Ensure it is installed and the environment exists."
    exit 1
fi

echo "Setup complete. The listener is running, waiting for OSC messages..."
