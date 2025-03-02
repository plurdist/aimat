import os
import socket
import subprocess
import time
from pythonosc import dispatcher, osc_server, udp_client

# Set up paths (cross-platform)
OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "musika_outputs")
DOCKER_CONTAINER = "musika-container"
DOCKER_IMAGE = "plurdist/musika:latest"

# Model lookup dictionary
MODEL_PATHS = {
    "techno": "checkpoints/techno",
    "misc": "checkpoints/misc",
}

# Dynamically determine local machine IP
MAX_HOST = socket.gethostbyname(socket.gethostname())
MAX_PORT = int(os.getenv("OSC_PORT", 7400))  # Allow dynamic port override
client = udp_client.SimpleUDPClient(MAX_HOST, MAX_PORT)

# Check if Docker container is running
def is_container_running():
    try:
        result = subprocess.run(
            ["docker", "ps", "--filter", f"name={DOCKER_CONTAINER}", "--format", "{{.ID}}"],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
        )
        return bool(result.stdout.strip())  # True if container is running
    except Exception as e:
        print(f"Error checking container status: {e}")
        return False

# Start Docker container if not already running
def start_container():
    # Check if a container with the same name already exists
    existing_container = subprocess.run(
        ["docker", "ps", "-a", "--filter", f"name={DOCKER_CONTAINER}", "--format", "{{.ID}}"],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    ).stdout.strip()

    if existing_container:
        print(f"Removing existing Musika container: {existing_container}")
        subprocess.run(["docker", "rm", "-f", existing_container], check=True)

    # Start a fresh Musika container with GPU support and volume mounting
    print("Starting Musika container with GPU support...")
    subprocess.run([
        "docker", "run", "--rm", "-dit", "--gpus", "all",
        "--name", DOCKER_CONTAINER,
        "-v", f"{OUTPUT_DIR}:/output",  # MOUNT VOLUME HERE
        DOCKER_IMAGE
    ], check=True)
    time.sleep(2)  # Give it time to initialize

# Stop Docker container after generation
def stop_container():
    if is_container_running():
        print("Stopping Musika container...")
        subprocess.run(["docker", "stop", DOCKER_CONTAINER], check=True)

# Find the latest file in the Musika output directory
def get_latest_file(directory):
    files = [f for f in os.listdir(directory) if f.endswith(".wav")]
    if not files:
        return None
    latest_file = max(files, key=lambda f: os.path.getmtime(os.path.join(directory, f)))
    return os.path.join(directory, latest_file)

# Function to run Musika inside Docker
def generate_music(_unused_addr, truncation_value, seconds_value, model):
    try:
        if model not in MODEL_PATHS:
            client.send_message("/status", f"Error: Model '{model}' not found!")
            print(f"Error: Model '{model}' not found!")
            return

        model_path = MODEL_PATHS[model]

        client.send_message("/status", "Starting container and generating audio...")
        print(f"Trigger received: {seconds_value}s audio, truncation {truncation_value}, model '{model}'")

        # Start container before execution
        start_container()

        musika_cmd = (
            f"docker exec {DOCKER_CONTAINER} python musika_generate.py "
            f"--load_path {model_path} --num_samples 1 --seconds {seconds_value} "
            f"--truncation {truncation_value} --save_path /output --mixed_precision False"
        )

        subprocess.run(musika_cmd, shell=True, check=True)
        time.sleep(2)

        latest_file = get_latest_file(OUTPUT_DIR)

        if latest_file:
            formatted_path = latest_file.replace("/", os.path.sep)  # Ensure correct path format for OS
            client.send_message("/status", "Generation complete!")
            client.send_message("/musika_done", formatted_path)
            print(f"Generated file detected: {formatted_path}")
        else:
            client.send_message("/status", "Error: No file generated!")
            print("No generated file found!")

        # Stop container after generation
        stop_container()

    except subprocess.CalledProcessError as e:
        client.send_message("/status", f"Error running Musika: {str(e)}")
        print(f"Error running Musika: {str(e)}")

# Set up OSC listener
dispatcher = dispatcher.Dispatcher()
dispatcher.map("/trigger_musika", generate_music)

OSC_PORT = int(os.getenv("OSC_PORT", 5005))  # Allow dynamic port override
server = osc_server.ThreadingOSCUDPServer(("0.0.0.0", OSC_PORT), dispatcher)
print(f"Listening for OSC messages on port {OSC_PORT}...")
server.serve_forever()
