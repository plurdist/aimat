# ----------------------------
# setup.ps1
# ----------------------------

# Define Write-ColoredMessage function
function Write-ColoredMessage {
    param(
        [string]$Message,
        [string]$Level 
    )
    $Colors = @{
        "INFO"    = "Cyan"
        "SUCCESS" = "Green"
        "WARNING" = "Yellow"
        "ERROR"   = "Red"
    }
    Write-Host "[$Level] $Message" -ForegroundColor $Colors[$Level]
}


if (-not $env:HOME) {
    $env:HOME = $env:USERPROFILE
    Write-ColoredMessage "Set HOME to $env:HOME" "INFO"
}


$SCRIPT_DIR   = Split-Path -Parent $MyInvocation.MyCommand.Path
$ENV_FILE     = Join-Path $SCRIPT_DIR "..\environment.yml"
$LISTENER_SCRIPT = Join-Path $SCRIPT_DIR "osc_listener.py"  
$ROOT_DIR = Split-Path -Parent $SCRIPT_DIR
$COMPOSE_FILE = Join-Path $ROOT_DIR "docker-compose.yml"
$CONDA_ENV    = "aimat" 

# Docker-related vars
$dockerImage     = "plurdist/aimat-musika:latest"
$dockerProject   = "aimat"
# $composeFile = Join-Path $SCRIPT_DIR "..\docker-compose.yml"

Write-ColoredMessage "Checking environment setup..." "INFO"

# Check if Docker installed

if (-Not (Get-Command "docker" -ErrorAction SilentlyContinue)) {
    Write-ColoredMessage "Docker is not installed! Please install Docker Desktop and restart your system." "ERROR"
    Exit 1
}

# Check if Docker is running
docker info --format "{{.ServerVersion}}" | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-ColoredMessage "Docker is not running! Please start Docker Desktop." "ERROR"
    Exit 1
}

# Check if Docker Compose is available
if (-Not (Get-Command "docker-compose" -ErrorAction SilentlyContinue) -and `
    -Not (Get-Command "docker compose" -ErrorAction SilentlyContinue)) {
    Write-ColoredMessage "Docker Compose is not installed! Install it before proceeding." "ERROR"
    Exit 1
}

# Ensure docker-compose.yml exists
if (-Not (Test-Path $COMPOSE_FILE)) {
    Write-ColoredMessage "Missing docker-compose.yml file! Ensure it is in $ROOT_DIR" "ERROR"
    Exit 1
}

# Write-ColoredMessage "Pulling latest Musika image..." "INFO"
# docker pull $dockerImage
# if ($LASTEXITCODE -ne 0) {
#     Write-ColoredMessage "Failed to pull Musika image." "ERROR"
#     Exit 1
# }

Write-ColoredMessage "Creating Docker containers using docker-compose..." "INFO"
docker compose up -d --force-recreate --remove-orphans | Out-Null
if ($LASTEXITCODE -ne 0) {
    Write-ColoredMessage "Failed to create Docker containers." "ERROR"
    Exit 1
}

# Verify container creation
$runningProject = docker compose ls -a --filter "name=$dockerProject" -q
if ($runningProject) {
    Write-ColoredMessage "Aimat environment has been created successfully." "SUCCESS"
} else {
    Write-ColoredMessage "Something went wrong. Check logs: docker logs $dockerProject" "ERROR"
    Exit 1
}

# Check Conda

if (-Not (Get-Command "conda" -ErrorAction SilentlyContinue)) {
    Write-ColoredMessage "Conda is not installed! Please install Miniconda or Anaconda." "ERROR"
    Exit 1
}

# Check if Conda environment exists
$existingEnv = conda env list | Select-String -Pattern "$CONDA_ENV"
if (-Not $existingEnv) {
    Write-ColoredMessage "Creating Conda environment from environment.yml..." "INFO"
    conda env create -f "$ENV_FILE"
    if ($LASTEXITCODE -ne 0) {
        Write-ColoredMessage "Failed to create Conda environment." "ERROR"
        Exit 1
    }
} else {
    Write-ColoredMessage "Conda environment '$CONDA_ENV' already exists." "SUCCESS"
}

# Activate Conda 
Write-ColoredMessage "Activating Conda environment..." "INFO"
$condaBase = & conda info --base
$condaProfile = Join-Path $condaBase "shell\condabin\conda-hook.ps1"

if (Test-Path $condaProfile) {
    . $condaProfile
    conda activate $CONDA_ENV
} else {
    Write-ColoredMessage "Failed to initialize Conda. Ensure Conda is installed and configured." "ERROR"
    Exit 1
}

Write-ColoredMessage "Conda environment activated successfully." "SUCCESS"

#  Local IP
Write-ColoredMessage "Determining local IP address..." "INFO"
$LOCAL_IP = (Get-NetIPAddress -AddressFamily IPv4 |
             Where-Object { $_.InterfaceAlias -notmatch "Loopback" } |
             Select-Object -ExpandProperty IPAddress |
             Select-Object -First 1)

if (-not $LOCAL_IP) {
    $LOCAL_IP = (Get-NetIPConfiguration | Select-Object -ExpandProperty IPv4Address -First 1).IPv4Address
}

if (-not $LOCAL_IP) {
    Write-ColoredMessage "Failed to determine local IP address. Falling back to 127.0.0.1" "WARNING"
    $LOCAL_IP = "127.0.0.1"
}


Write-ColoredMessage "Local IP address detected: $LOCAL_IP" "SUCCESS"

# Start listener script
Write-ColoredMessage "Starting listener script..." "INFO"

# Run Python script and wait for completion
$process = Start-Process -FilePath "python" -ArgumentList "`"$LISTENER_SCRIPT`"" `
                         -NoNewWindow -PassThru -Wait

# Check if process exited successfully
if ($process.ExitCode -ne 0) {
    Write-ColoredMessage "Listener script failed to start or encountered an error." "ERROR"
    Exit 1
}

Write-ColoredMessage "Setup complete! The listener is running, waiting for OSC messages on port 5005..." "SUCCESS"
