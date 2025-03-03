#!/bin/bash

# Set script directory to ensure it runs from anywhere
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_DIR="$SCRIPT_DIR/../docker"
ENV_FILE="$SCRIPT_DIR/../environment.yml"
LISTENER_SCRIPT="$SCRIPT_DIR/osc_listener.py"
CONDA_ENV="aimat"  

# docker
dockerImage="plurdist/aimat-musika:latest"
containerName="musika-container"
composeFile="$DOCKER_DIR/docker-compose.yml"

# message formatting
print_message() {
    local color=$1
    local message=$2
    case $color in
        "INFO") printf "\033[36m[INFO] %s\033[0m\n" "$message" ;;      # Cyan
        "SUCCESS") printf "\033[32m[SUCCESS] %s\033[0m\n" "$message" ;; # Green
        "WARNING") printf "\033[33m[WARNING] %s\033[0m\n" "$message" ;; # Yellow
        "ERROR") printf "\033[31m[ERROR] %s\033[0m\n" "$message" ;;     # Red
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

# Change to correct Docker directory
cd "$DOCKER_DIR" || exit

# Pull latest Musika image
print_message "INFO" "Pulling latest Musika image..."
if ! docker pull "$dockerImage"; then
    print_message "ERROR" "Failed to pull Musika image."
    exit 1
fi

# Create (but do not start) the container using docker-compose
print_message "INFO" "Creating Musika container using docker-compose..."
if ! docker compose up --no-start --force-recreate --remove-orphans; then
    print_message "ERROR" "Failed to create Musika container."
    exit 1
fi

# Verify if the Container is Created
runningContainer=$(docker ps -a --filter "name=$containerName" -q)

if [ -n "$runningContainer" ]; then
    print_message "SUCCESS" "Musika container has been created successfully."
else
    print_message "ERROR" "Something went wrong. Check logs: docker logs $containerName"
    exit 1
fi

### CHECK IF CONDA IS INSTALLED ###
if ! command -v conda &> /dev/null; then
    print_message "ERROR" "Conda is not installed! Please install Miniconda or Anaconda and restart."
    exit 1
fi

# Check if the Conda environment exists
if ! conda env list | grep -q "$CONDA_ENV"; then
    print_message "INFO" "Conda environment '$CONDA_ENV' not found. Creating it from environment.yml..."
    if ! conda env create -f "$ENV_FILE"; then
        print_message "ERROR" "Failed to create Conda environment."
        exit 1
    fi
else
    print_message "SUCCESS" "Conda environment '$CONDA_ENV' already exists."
fi

# Activate Conda environment
print_message "INFO" "Activating Conda environment..."
source "$(conda info --base)/etc/profile.d/conda.sh"
eval "$(conda shell.bash hook)"

if ! conda activate "$CONDA_ENV"; then
    print_message "ERROR" "Failed to activate Conda environment. Ensure it is installed and the environment exists."
    exit 1
fi

print_message "SUCCESS" "Conda environment activated successfully."

# get local IP
print_message "INFO" "Determining local IP address..."
if [[ "$(uname)" == "Darwin" ]]; then
    LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
else
    LOCAL_IP=$(hostname -I | awk '{print $1}')
fi

if [[ -z "$LOCAL_IP" ]]; then
    print_message "ERROR" "Failed to determine local IP address. Falling back to 127.0.0.1"
    LOCAL_IP="127.0.0.1"
fi

print_message "SUCCESS" "Local IP address detected: $LOCAL_IP"

# Start listener script
print_message "INFO" "Starting listener script..."
if ! python "$LISTENER_SCRIPT"; then
    print_message "ERROR" "Listener script failed to start."
    exit 1
fi

print_message "SUCCESS" "Setup complete! The listener is running, waiting for OSC messages on port 5005..."