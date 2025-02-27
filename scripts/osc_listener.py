import os
import subprocess
import time
from pythonosc import dispatcher, osc_server, udp_client

# Set up paths
OUTPUT_DIR = "/mnt/c/Users/eric/Documents/musika_outputs"
DOCKER_CONTAINER = "08fae64b27a4"

# Model lookup dictionary
MODEL_PATHS = {
    "techno": "checkpoints/techno",
    "pipes": "checkpoints/MUSIKA_latlen_256_latdepth_64_sr_44100_time_20250207-164041/MUSIKA_iterations-150k_losses-0.9152642-0.2087220-0.1662696",
}

# OSC client to send messages to Max
MAX_HOST = "172.20.192.1"
MAX_PORT = 7400
client = udp_client.SimpleUDPClient(MAX_HOST, MAX_PORT)

# find latest file in the Musika output directory
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

        client.send_message("/status", "Generating audio...")
        print(f"Trigger received, generating Musika output of {seconds_value} seconds with truncation {truncation_value} using model '{model}'...")

        musika_cmd = (
            f"docker exec -it {DOCKER_CONTAINER} sh -c "
            f"\"cd musika && python musika_generate.py "
            f"--load_path {model_path} "
            f"--num_samples 1 --seconds {seconds_value} --truncation {truncation_value} --save_path /output\""
        )

        subprocess.run(musika_cmd, shell=True, check=True)
        time.sleep(2)

        latest_file = get_latest_file(OUTPUT_DIR)

        if latest_file:
            windows_path = latest_file.replace("/mnt/c/", "C:\\").replace("/", "\\")
            client.send_message("/status", "Generation complete!")
            client.send_message("/musika_done", str(windows_path))
            print(f"Generated file detected: {windows_path}")
        else:
            client.send_message("/status", "Error: No file generated!")
            print("No generated file found!")

    except subprocess.CalledProcessError as e:
        client.send_message("/status", f"Error running Musika: {str(e)}")
        print(f"Error running Musika: {str(e)}")

# Set up OSC listener
dispatcher = dispatcher.Dispatcher()
dispatcher.map("/trigger_musika", generate_music)

server = osc_server.ThreadingOSCUDPServer(("0.0.0.0", 5005), dispatcher)
print("Listening for OSC messages...")
server.serve_forever()
