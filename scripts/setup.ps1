# Set script directory to ensure it runs from anywhere
$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$DOCKER_DIR = Join-Path $SCRIPT_DIR "..\docker"
$LISTENER_SCRIPT = Join-Path $SCRIPT_DIR "osc_listener.py"  # Adjust to actual listener script path
$CONDA_ENV = "aimt"  # Your Conda environment name

# Define Docker image and container details
$dockerImage = "plurdist/musika:latest"
$containerName = "musika-container"
$composeFile = Join-Path $DOCKER_DIR "docker-compose.yml"

function Write-ColoredMessage {
    param(
        [string]$Message,
        [string]$Color
    )
    $Colors = @{
        "INFO" = "Cyan"
        "SUCCESS" = "Green"
        "WARNING" = "Yellow"
        "ERROR" = "Red"
    }
    Write-Host "[$Color] $Message" -ForegroundColor $Colors[$Color]
}

Write-ColoredMessage "Checking environment setup..." "INFO"

# Check if Docker is installed
if (-Not (Get-Command "docker" -ErrorAction SilentlyContinue)) {
    Write-ColoredMessage "Docker is not installed! Please install Docker Desktop and restart your system." "ERROR"
    Exit 1
}

# Check if Docker is running
$dockerStatus = docker info --format "{{.ServerVersion}}" 2>$null
if (-Not $dockerStatus) {
    Write-ColoredMessage "Docker is not running! Please start Docker Desktop." "ERROR"
    Exit 1
}

# Check if Docker Compose is available
if (-Not (Get-Command "docker-compose" -ErrorAction SilentlyContinue) -and -Not (Get-Command "docker compose" -ErrorAction SilentlyContinue)) {
    Write-ColoredMessage "Docker Compose is not installed! Install it before proceeding." "ERROR"
    Exit 1
}

# Ensure the output directory exists
$outputPath = Join-Path $HOME "musika_outputs"
if (-Not (Test-Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath | Out-Null
    Write-ColoredMessage "Created output directory: $outputPath" "SUCCESS"
}

# Check if docker-compose.yml exists in the correct directory
if (-Not (Test-Path $composeFile)) {
    Write-ColoredMessage "Missing docker-compose.yml file! Ensure it is in $DOCKER_DIR" "ERROR"
    Exit 1
}

# Change to the correct Docker directory
Set-Location -Path $DOCKER_DIR

# Pull the latest Musika image
Write-ColoredMessage "Pulling latest Musika image..." "INFO"
docker pull $dockerImage

# Create (but do not start) the container
Write-ColoredMessage "Creating Musika container..." "INFO"
docker compose up --no-start --force-recreate --remove-orphans

# Verify if the container is created
$runningContainer = docker ps -a --filter "name=$containerName" -q
if ($runningContainer) {
    Write-ColoredMessage "Musika container has been created successfully." "SUCCESS"
} else {
    Write-ColoredMessage "Something went wrong. Check logs: docker logs $containerName" "ERROR"
    Exit 1
}

# Activate Conda environment and start listener script
Write-ColoredMessage "Activating Conda environment and starting listener..." "INFO"

# Ensure Conda is initialized in PowerShell
$condaBase = & conda info --base
$condaProfile = Join-Path $condaBase "shell\condabin\conda-hook.ps1"

if (Test-Path $condaProfile) {
    . $condaProfile
    conda activate $CONDA_ENV
} else {
    Write-ColoredMessage "Failed to initialize Conda. Ensure Conda is installed and configured." "ERROR"
    Exit 1
}

# Start listener script
if ($?) {
    Write-ColoredMessage "Conda environment activated successfully." "SUCCESS"
    Write-ColoredMessage "Starting listener script..." "INFO"
    python $LISTENER_SCRIPT
} else {
    Write-ColoredMessage "Failed to activate Conda environment. Ensure it is installed and the environment exists." "ERROR"
    Exit 1
}

Write-ColoredMessage "Setup complete! The listener is running, waiting for OSC messages..." "SUCCESS"