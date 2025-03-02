#!/bin/bash

# Define Docker image and container details
dockerImage="plurdist/musika:latest"
containerName="musika-container"
composeFile="docker-compose.yml"

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
outputPath="$(pwd)/musika_outputs"
if [ ! -d "$outputPath" ]; then
    mkdir -p "$outputPath"
    echo "Created output directory: $outputPath"
fi

# Check if docker-compose.yml exists before running
if [ ! -f "$composeFile" ]; then
    echo "Missing docker-compose.yml file! Ensure it is in the correct location."
    exit 1
fi

# Pull the latest Musika image
echo "Pulling latest Musika image..."
docker pull "$dockerImage"

# Start the container
echo "Starting Musika container..."
docker compose up -d --force-recreate --remove-orphans

# Wait & Verify if the Container is Running
sleep 3
runningContainer=$(docker ps --filter "name=$containerName" -q)

if [ -n "$runningContainer" ]; then
    echo "Musika container is running successfully."
else
    echo "Something went wrong. Check logs: docker logs $containerName"
    exit 1
fi

echo "Setup complete. You can now use Musika."
