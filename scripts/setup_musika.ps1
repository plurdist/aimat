# Ensure the script runs from its directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

# Define Docker image and container details
$dockerImage = "plurdist/musika:latest"
$containerName = "musika-container"
$composeFile = "$scriptDir/docker-compose.yml"

Write-Host "Checking environment setup..."

# Check if Docker is installed
if (-Not (Get-Command "docker" -ErrorAction SilentlyContinue)) {
    Write-Host "Docker is not installed. Please install Docker Desktop and restart your system."
    Exit 1
}

# Check if Docker is running
$dockerStatus = docker info --format "{{.ServerVersion}}" 2>$null
if (-Not $dockerStatus) {
    Write-Host "Docker is not running. Please start Docker Desktop."
    Exit 1
}

# Check if Docker Compose is available
if (-Not (Get-Command "docker-compose" -ErrorAction SilentlyContinue) -and -Not (Get-Command "docker compose" -ErrorAction SilentlyContinue)) {
    Write-Host "Docker Compose is not installed. Install it before proceeding."
    Exit 1
}

# Ensure the output directory exists
$outputPath = "$HOME/musika_outputs"
if (-Not (Test-Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath | Out-Null
    Write-Host "Created output directory: $outputPath"
}

# Check if docker-compose.yml exists
if (-Not (Test-Path $composeFile)) {
    Write-Host "Missing docker-compose.yml file! Ensure it is in the correct location."
    Exit 1
}

# Pull the latest Musika image
Write-Host "Pulling latest Musika image..."
docker pull $dockerImage

Write-Host "Starting Musika container only when needed..."
Write-Host "NOTE: The container will be started automatically by the listener script when needed."

# Start the listener script automatically
Write-Host "Starting the OSC Listener script..."
Start-Process powershell -ArgumentList "-NoExit", "-Command", "conda activate aimt; python scripts/listener.py"

Write-Host "Setup complete. Musika is ready to use!"
