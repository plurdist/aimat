import os
import socket
import subprocess
import time
import platform
import threading
import pathlib
from pythonosc import dispatcher, osc_server, udp_client

# Set up paths (cross-platform)
MUSIKA_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "musika", "output")
MIDI_DDSP_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "midi_ddsp", "output")
BASIC_PITCH_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "basic_pitch", "output")

# Model lookup dictionary
MODEL_PATHS = {
    "techno": "checkpoints/techno",
    "misc": "checkpoints/misc",
    "pipes": "checkpoints/pipes"
}

def normalize_path(path: str) -> str:
    """
    Convert incoming paths from Max/MSP (macOS or Windows) to a host‑valid path
    and return it with POSIX slashes.
    """
    path = str(path).strip('"').rstrip("\\/")
    path = path.replace("\\", "/")
    if path.lower().startswith("macintosh hd:"):
        path = "/" + path.split(":", 1)[1]      # -> "/Users/…"
    return pathlib.PurePath(path).as_posix()


# Get local IP 
def get_local_ip():
    try:
        system = platform.system()
        if system == "Darwin":
            return subprocess.check_output(["ipconfig", "getifaddr", "en0"]).decode().strip()
        elif system == "Linux":
            return subprocess.check_output(["hostname", "-I"]).decode().split()[0]
        elif system == "Windows":
            return socket.gethostbyname(socket.gethostname())  # Windows fallback
    except Exception:
        return "127.0.0.1"

MAX_HOST = get_local_ip()
print(f"Detected local IP: {MAX_HOST}")

MAX_PORT = int(os.getenv("OSC_PORT", 7400))
client = udp_client.SimpleUDPClient(MAX_HOST, MAX_PORT)

# Blinker for status messages
blinker_events = {}

def status_blinker(model_type):
    """ Periodic OSC messages indicating generation is in progress. """
    count = 1
    blinker_events[model_type] = threading.Event()
    message = {
        "musika": "Generating audio with Musika",
        "basic_pitch": "Generating MIDI with basic_pitch",
        "midi_ddsp": "Generating audio with midi_ddsp"
    }.get(model_type, "Generating...")

    while not blinker_events[model_type].is_set():
        client.send_message(f"/status", f"{message}{'.' * count}")
        count = (count % 3) + 1
        time.sleep(0.5)

# fetch latest generated file
def get_latest_file(directory, extension=".wav"):
    files = [f for f in os.listdir(directory) if f.endswith(extension)]
    if not files:
        return None
    latest_file = max(files, key=lambda f: os.path.getmtime(os.path.join(directory, f)))
    return os.path.join(directory, latest_file)


def generate_music(_unused_addr, model_type, *args):
    try:
        print(f"[INFO] Received OSC trigger for {model_type} generation...")  
        
        client.send_message(f"/status", f"Initializing {model_type} generation...")
        
        # Blink thread for periodic status updates
        blink_thread = threading.Thread(target=status_blinker, args=(model_type,), daemon=True)
        blink_thread.start()

        if model_type == "musika":
            truncation_value, seconds_value, model_name = args
            if model_name not in MODEL_PATHS:
                client.send_message(f"/status", f"Error: Model '{model_name}' not found!")
                return
            model_path = MODEL_PATHS[model_name]

            musika_cmd = (
                f"docker exec aimat-musika-1 python musika_generate.py "
                f"--load_path {model_path} --num_samples 1 --seconds {seconds_value} "
                f"--truncation {truncation_value} --save_path /output --mixed_precision False"
            )
            
            client.send_message(f"/status", f"{model_type} generating...")
            print(f"[INFO] Running Musika command: {musika_cmd}")

            subprocess.run(musika_cmd, shell=True, check=True)

            latest_file = get_latest_file(MUSIKA_OUTPUT_DIR, extension=".wav")
            if latest_file:
                print(f"[SUCCESS] {model_type} generation complete! Output saved at: {latest_file}")
                client.send_message(f"/status", f"{model_type} generation complete!")
                client.send_message(f"/{model_type}_done", latest_file)
            else:
                client.send_message(f"/status", f"{model_type} Error: No output file generated!")

        elif model_type == "basic_pitch":
            input_audio = normalize_path(args[0])
            
            if not os.path.exists(input_audio):
                client.send_message("/status", f"{model_type} Error: file not found → {input_audio}")
                return

            container_input_path = f"/input/{os.path.basename(input_audio)}"
            basic_pitch_cmd = (
                f'docker exec aimat-basic_pitch-1 '
                f'basic-pitch "/output" "{container_input_path}"'
            )

            client.send_message("/status", f"{model_type} generating…")
            print("[INFO] Running Basic Pitch:", basic_pitch_cmd)

            try:
                subprocess.run(basic_pitch_cmd, shell=True, check=True)
            except subprocess.CalledProcessError as e:
                client.send_message("/status", f"{model_type} Error: {e}")
                return

            latest_file = get_latest_file(BASIC_PITCH_OUTPUT_DIR, ".mid")
            if latest_file:
                client.send_message("/status", f"{model_type} transcription complete!")
                client.send_message(f"/{model_type}_done", latest_file)
            else:
                client.send_message("/status", f"{model_type} Error: No MIDI file generated!")

        elif model_type == "midi_ddsp":
            arch = platform.machine().lower() 

            midi_file_path = os.path.basename(args[0])
            instrument_name = args[1] if len(args) > 1 else "violin"

            container_midi_path = f"/input/{midi_file_path}"

            if "arm" in arch or "aarch64" in arch:
                synth_cmd = (
                    'docker exec aimat-midi_ddsp-1 bash -c "'
                    'source /opt/conda/etc/profile.d/conda.sh && '
                    'conda activate midi-ddsp && ' 
                    f'python3 /scripts/md_synthesize.py --midi_path {container_midi_path} '
                    f'--output_dir /output --instrument {instrument_name}"'
                )
            else:
                synth_cmd = (
                    f"docker exec aimat-midi_ddsp-1 python3 /scripts/md_synthesize.py "
                    f"--midi_path {container_midi_path} --output_dir /output --instrument {instrument_name}"
                )

            client.send_message(f"/status", f"{model_type} generating with {instrument_name}...")
            print(f"[INFO] Running MIDI-DDSP synthesis with instrument '{instrument_name}': {synth_cmd}")

            subprocess.run(synth_cmd, shell=True, check=True)

            latest_audio = get_latest_file(MIDI_DDSP_OUTPUT_DIR, extension=".wav")
            if latest_audio:
                print(f"[SUCCESS] {model_type} synthesis complete! Output saved at: {latest_audio}")
                client.send_message(f"/status", f"{model_type} synthesis complete using {instrument_name}!")
                client.send_message(f"/{model_type}_done", latest_audio)
            else:
                client.send_message(f"/status", f"{model_type} Error: No output generated with {instrument_name}!")

        else:
            client.send_message(f"/status", f"Unknown model type: {model_type}")
            return

        #  blinking stop when generation completes
        if model_type in blinker_events:
            blinker_events[model_type].set()

    except subprocess.CalledProcessError as e:
        client.send_message(f"/status", f"Error running {model_type}: {str(e)}")


#  OSC listener
dispatcher = dispatcher.Dispatcher()
dispatcher.map("/trigger_model", generate_music)

OSC_PORT = int(os.getenv("OSC_PORT", 5005))
server = osc_server.ThreadingOSCUDPServer(("0.0.0.0", OSC_PORT), dispatcher)
print(f"Listening for OSC messages on port {OSC_PORT}...")
server.serve_forever()
