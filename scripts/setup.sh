#!/bin/bash

# Set script directory to ensure it runs from anywhere
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_DIR="$SCRIPT_DIR/../docker"
ENV_FILE="$SCRIPT_DIR/environment.yml"
LISTENER_SCRIPT="$SCRIPT_DIR/osc_listener.py"  
CONDA_ENV="aimt" 

# Define Docker image and container details
dockerImage="plurdist/aimat-musika:latest"
containerName="musika-container"
composeFile="$DOCKER_DIR/docker-compose.yml"

# Function to print colored messages
print_message() {
    local color=$1
    local message=$2
    case $color in
        "INFO") echo -e "\e[36m[INFO] $message\e[0m" ;;      # Cyan
        "SUCCESS") echo -e "\e[32m[SUCCESS] $message\e[0m" ;; # Green
        "WARNING") echo -e "\e[33m[WARNING] $message\e[0m" ;; # Yellow
        "ERROR") echo -e "\e[31m[ERROR] $message\e[0m" ;;     # Red
    esac
}

print_message "INFO" "Checking environment setup..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    print_message "ERROR" "Docker is not installed! Please install Docker Desktop and restart your system."
    exit 1
fi

# Check if Docker is running
if ! docker info &> /dev/null; then
    print_message "ERROR" "Docker is not running! Please start Docker Desktop."
    exit 1
fi

# Check if Docker Compose is available
if ! command -v docker-compose &> /dev/null && ! command -v docker compose &> /dev/null; then
    print_message "ERROR" "Docker Compose is not installed! Install it before proceeding."
    exit 1
fi

# Ensure docker-compose.yml exists in the correct directory
if [ ! -f "$composeFile" ]; then
    print_message "ERROR" "Missing docker-compose.yml file! Ensure it is in $DOCKER_DIR"
    exit 1
fi

# Change to the correct Docker directory
cd "$DOCKER_DIR" || exit

# Pull the latest Musika image
print_message "INFO" "Pulling latest Musika image..."
docker pull "$dockerImage"

# Create (but do not start) the container using docker-compose
print_message "INFO" "Creating Musika container using docker-compose..."
docker compose up --no-start --force-recreate --remove-orphans

# Verify if the Container is Created
runningContainer=$(docker ps -a --filter "name=$containerName" -q)

if [ -n "$runningContainer" ]; then
    print_message "SUCCESS" "Musika container has been created successfully."
else
    print_message "ERROR" "Something went wrong. Check logs: docker logs $containerName"
    exit 1
fi

# Start listener script
print_message "INFO" "Starting listener script..."
python "$LISTENER_SCRIPT"

print_message "SUCCESS" "Setup complete! The listener is running, waiting for OSC messages..."
