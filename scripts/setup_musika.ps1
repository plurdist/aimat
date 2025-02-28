# Define Docker image and container details
$dockerImage = "plurdist/musika:latest"
$containerName = "musika-container"
$composeFile = "docker-compose.yml"

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

# Check if WSL2 backend is enabled for GPU support
$wslStatus = wsl -l -v 2>$null
if (-Not ($wslStatus -match "WSL2")) {
    Write-Host "WSL2 is not enabled. GPU support may not work. Enable WSL2 for best performance."
}

# Check if NVIDIA Container Toolkit is installed (needed for GPU)
$gpuSupportCheck = docker run --rm --gpus all nvidia/cuda:11.2.2-base nvidia-smi 2>$null
if ($gpuSupportCheck -match "failed") {
    Write-Host "NVIDIA Container Toolkit is not detected! GPU acceleration may not work."
}

# Check if Docker Compose is available
if (-Not (Get-Command "docker-compose" -ErrorAction SilentlyContinue) -and -Not (Get-Command "docker compose" -ErrorAction SilentlyContinue)) {
    Write-Host "Docker Compose is not installed. Install it before proceeding."
    Exit 1
}

# Ensure the output directory exists
$outputPath = "$(pwd)\musika_outputs"
if (-Not (Test-Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath | Out-Null
    Write-Host "Created output directory: $outputPath"
}

# Check if docker-compose.yml exists before running
if (-Not (Test-Path $composeFile)) {
    Write-Host "Missing docker-compose.yml file! Ensure it is in the correct location."
    Exit 1
}

# Remove any existing containers with conflicting names
Write-Host "Cleaning up old Musika containers..."
$existingContainers = docker ps -a --format "{{.ID}} {{.Names}}"
$existingContainers -split "`n" | ForEach-Object {
    $containerID, $containerNameFound = $_ -split " "
    if ($containerNameFound -match "musika-container|blah") {
        docker rm -f $containerID
        Write-Host "Removed container: $containerNameFound"
    }
}

# Remove orphaned volumes & networks
docker volume prune -f
docker network prune -f

# Pull the latest Musika image
Write-Host "Pulling latest Musika image..."
docker pull $dockerImage

# Start the container with correct name
Write-Host "Starting Musika container..."
docker compose up -d --force-recreate --remove-orphans

# Wait & Verify the Container is Running
Start-Sleep -Seconds 3
$runningContainer = docker ps --filter "name=$containerName" -q
if ($runningContainer) {
    Write-Host "Musika container is running successfully!"
} else {
    Write-Host "Something went wrong. Check logs: docker logs $containerName"
    Exit 1
}

# Verify GPU Availability Inside the Container
Write-Host "Checking GPU availability inside the container..."
docker exec -it $containerName python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

Write-Host "Setup complete! You can now use Musika."
