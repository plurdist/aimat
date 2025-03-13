#!/bin/bash

#  set HOME for Linux/macOS
export HOME=${HOME:-$USERPROFILE}

# Set script directory to ensure it runs from anywhere
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/../environment.yml"
LISTENER_SCRIPT="$SCRIPT_DIR/osc_listener.py"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
COMPOSE_FILE="$ROOT_DIR/docker-compose.yml"
CONDA_ENV="aimat"  

# docker
dockerImage="plurdist/aimat-musika:latest"
dockerProject="aimat"


#  formatting
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

# Check  Docker  installed
if ! command -v docker &> /dev/null; then
    print_message "ERROR" "Docker is not installed! Please install Docker Desktop and restart your system."
    exit 1
fi

# Check  Docker running
if ! docker info &> /dev/null; then
    print_message "ERROR" "Docker is not running! Please start Docker Desktop."
    exit 1
fi

# Check if Docker Compose  available
if ! command -v docker-compose &> /dev/null && ! command -v docker compose &> /dev/null; then
    print_message "ERROR" "Docker Compose is not installed! Install it before proceeding."
    exit 1
fi

# Ensure docker-compose.yml exists in the correct directory
if [ ! -f "$COMPOSE_FILE" ]; then
    print_message "ERROR" "Missing docker-compose.yml file! Ensure it is in $ROOT_DIR"
    exit 1
fi

# # Pull latest Musika image
# print_message "INFO" "Pulling latest Musika image..."
# if ! docker pull "$dockerImage"; then
#     print_message "ERROR" "Failed to pull Musika image."
#     exit 1
# fi

# Create (but do not start) the container using docker-compose
print_message "INFO" "Creating Docker containers using docker-compose..."
if ! docker compose up -d --force-recreate --remove-orphans; then
    print_message "ERROR" "Failed to create Docker containers."
    exit 1
fi

runningProject=$(docker compose ls -a --filter "name=$dockerProject" -q)

if [ -n "$runningProject" ]; then
    print_message "SUCCESS" "Aimat environment has been created successfully."
else
    print_message "ERROR" "Something went wrong. Check logs: docker logs $dockerProject"
    exit 1
fi

### CHECK CONDA  INSTALLED 
if ! command -v conda &> /dev/null; then
    print_message "ERROR" "Conda is not installed! Please install Miniconda or Anaconda and restart."
    exit 1
fi

# Check  Conda environment exists
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
print_message "SUCCESS" "Local IP address detected: $LOCAL_IP"

print_message "INFO" "Determining local IP address..."
if [[ "$(uname)" == "Darwin" ]]; then
    LOCAL_IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
elif [[ "$(uname)" == "Linux" ]]; then
    LOCAL_IP=$(hostname -I | awk '{print $1}')
    [[ -z "$LOCAL_IP" ]] && LOCAL_IP=$(ip route get 8.8.8.8 | awk '{print $7}')
else
    print_message "ERROR" "Failed to determine local IP address. Falling back to 127.0.0.1"
    LOCAL_IP="127.0.0.1"
fi

#  listener script
print_message "INFO" "Starting listener script..."
if ! python "$LISTENER_SCRIPT"; then
    print_message "ERROR" "Listener script failed to start."
    exit 1
fi

print_message "SUCCESS" "Setup complete! The listener is running, waiting for OSC messages on port 5005..."