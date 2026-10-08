import contextlib
import os
import re
import shutil
import socket
import subprocess
import time
import platform
import threading
import pathlib
import uuid
from pythonosc import dispatcher, osc_server, udp_client

from aimat import phrase

# Set up paths (cross-platform)
MUSIKA_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "musika", "output")
MIDI_DDSP_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "midi_ddsp", "output")
BASIC_PITCH_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "basic_pitch", "output")
CONTINUATOR_OUTPUT_DIR = os.path.join(os.path.expanduser("~"), "aimat", "continuator", "output")

# Model lookup dictionary
MODEL_PATHS = {
    "techno": "checkpoints/techno",
    "misc": "checkpoints/misc",
    "pipes": "checkpoints/pipes"
}


# Optional model settings, sent over OSC as `key value` pairs after the file path.
class SettingError(ValueError):
    """A setting from OSC that the model can't accept."""


def _one_of(*options):
    def parse(key, value, flag):
        if value not in options:
            raise SettingError(f"{key} must be one of {', '.join(options)}")
        return [flag, value]
    return parse


def _is_number(value):
    return isinstance(value, (int, float)) and not isinstance(value, bool)


def _whole(low, high):
    def parse(key, value, flag):
        if not _is_number(value) or value != int(value) or not low <= value <= high:
            raise SettingError(f"{key} must be a whole number from {low} to {high}")
        return [flag, str(int(value))]
    return parse


def _decimal(low, high):
    def parse(key, value, flag):
        if not _is_number(value) or not low <= value <= high:
            raise SettingError(f"{key} must be a number from {low} to {high}")
        return [flag, format(float(value), "g")]  # OSC floats are 32-bit: 0.7 arrives as 0.699999988
    return parse


def _switch(key, value, flag):
    if value not in (0, 1):
        raise SettingError(f"{key} must be 0 or 1")
    return [flag] if value else []


def _tempo(key, value, flag):
    if not _is_number(value) or value != int(value) or not (value == -1 or 20 <= value <= 400):
        raise SettingError(f"{key} must be -1 (keep the input's tempo) or 20 to 400")
    return [flag, str(int(value))]


CONTINUATOR_SETTINGS = {
    "mode": ("--mode", _one_of("continue", "freeform")),
    "seed_from": ("--seed-from", _one_of("end", "start", "middle")),
    "anchors": ("--anchors", _whole(0, 32)),
    "length": ("--length", _whole(1, 500)),
    "kmax": ("--kmax", _whole(1, 12)),
    "transposition": ("--transposition", _switch),
    "decay": ("--decay-mode", _one_of("full", "late", "middle", "early")),
    "tempo": ("--tempo", _tempo),
}
CONTINUATOR_DEFAULTS = {"anchors": 5, "kmax": 6, "decay": "late"}

BASIC_PITCH_SETTINGS = {
    "onset": ("--onset-threshold", _decimal(0.05, 0.95)),
    "frame": ("--frame-threshold", _decimal(0.05, 0.95)),
    "min_note_ms": ("--minimum-note-length", _decimal(5, 5000)),
    "min_hz": ("--minimum-frequency", _decimal(20, 20000)),
    "max_hz": ("--maximum-frequency", _decimal(20, 20000)),
}


def parse_settings(args, allowed, defaults=None):
    """Turn OSC `key value` pairs into command-line flags, checking each against `allowed`."""
    if len(args) % 2:
        raise SettingError("settings must be key value pairs")
    chosen = dict(defaults or {})
    for key, value in zip(args[::2], args[1::2]):
        if key not in allowed:
            raise SettingError(f"unknown setting '{key}'")
        chosen[key] = value
    flags = []
    for key, value in chosen.items():
        flag, parse = allowed[key]
        flags += parse(key, value, flag)
    return flags

def normalize_path(path: str) -> str:
    """
    Convert incoming paths from Max/MSP (macOS or Windows) to a host-valid path
    and return it with POSIX slashes.
    """
    path = str(path).strip('"').rstrip("\\/")
    path = path.replace("\\", "/")
    if path.lower().startswith("macintosh hd:"):
        path = "/" + path.split(":", 1)[1]      # -> "/Users/…"
    return pathlib.PurePath(path).as_posix()


# Each container can only read the host folder mounted at its /input (docker-compose.yml).
def input_dir(model_type):
    return {
        "basic_pitch": MUSIKA_OUTPUT_DIR,
        "midi_ddsp": BASIC_PITCH_OUTPUT_DIR,
        "continuator": BASIC_PITCH_OUTPUT_DIR,
    }[model_type]


STAGING_DIR = "aimat_inputs"


class InputError(Exception):
    """The chosen file couldn't be made readable for the model."""


def chosen_file(model_type, path):
    """The musician's file as a host path, or None after reporting that it doesn't exist."""
    host_path = normalize_path(path)
    if not os.path.exists(host_path):
        client.send_message("/status", f"{model_type} Error: file not found → {host_path}")
        return None
    return host_path


@contextlib.contextmanager
def staged(model_type, host_path):
    """
    Yield the path inside the container for the musician's file (AIM2-11).

    A file already in the model's input folder is read where it is. Any other file,
    such as one on the Desktop or a continuation fed straight back in, is copied into
    a folder of its own inside the input folder for this job, removed afterwards.
    """
    folder = input_dir(model_type)
    name = os.path.basename(host_path)
    if os.path.realpath(os.path.dirname(host_path)) == os.path.realpath(folder):
        yield f"/input/{name}"
        return
    job = uuid.uuid4().hex[:8]
    job_dir = os.path.join(folder, STAGING_DIR, job)
    try:
        os.makedirs(job_dir)
        shutil.copyfile(host_path, os.path.join(job_dir, name))
    except OSError as e:
        shutil.rmtree(job_dir, ignore_errors=True)
        raise InputError(f"couldn't copy {host_path} for the model: {e}") from e
    try:
        yield f"/input/{STAGING_DIR}/{job}/{name}"
    finally:
        shutil.rmtree(job_dir, ignore_errors=True)


def send_profile(model_type, path, given_path=None):
    """/phrase_profile <path> key value …, describing the phrase in a MIDI result (AIM2-65)."""
    try:
        args = phrase.osc_args(path, given_path)
    except phrase.MidiError as e:
        client.send_message("/status", f"{model_type} Error: can't read the MIDI file → {path} ({e})")
        return
    client.send_message("/phrase_profile", args)


def continuation_name(input_name):
    """`<stem>_cont_<id>.mid`, keeping one _cont_ suffix however often a continuation is fed back."""
    stem = re.sub(r"(_cont_[0-9a-f]{8})+$", "", os.path.splitext(input_name)[0])
    return f"{stem}_cont_{uuid.uuid4().hex[:8]}.mid"


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

# Reply client to Max; created by main() (or by tests)
client = None

# Blinker for status messages
blinker_events = {}

def status_blinker(model_type):
    """ Periodic OSC messages indicating generation is in progress. """
    count = 1
    blinker_events[model_type] = threading.Event()
    message = {
        "musika": "Generating audio with Musika",
        "basic_pitch": "Generating MIDI with basic_pitch",
        "midi_ddsp": "Generating audio with midi_ddsp",
        "continuator": "Generating MIDI continuation with Continuator"
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
            input_audio = chosen_file(model_type, args[0])
            if input_audio is None:
                return

            try:
                settings = parse_settings(args[1:], BASIC_PITCH_SETTINGS)
            except SettingError as e:
                client.send_message("/status", f"{model_type} Error: {e}")
                return

            with staged(model_type, input_audio) as container_input_path:
                basic_pitch_cmd = [
                    "docker", "exec", "aimat-basic_pitch-1",
                    "basic-pitch", *settings, "/output", container_input_path,
                ]

                client.send_message("/status", f"{model_type} generating…")
                print("[INFO] Running Basic Pitch:", " ".join(basic_pitch_cmd))

                try:
                    subprocess.run(basic_pitch_cmd, check=True)
                except subprocess.CalledProcessError as e:
                    client.send_message("/status", f"{model_type} Error: {e}")
                    return

            latest_file = get_latest_file(BASIC_PITCH_OUTPUT_DIR, ".mid")
            if latest_file:
                client.send_message("/status", f"{model_type} transcription complete!")
                client.send_message(f"/{model_type}_done", latest_file)
                send_profile(model_type, latest_file)
            else:
                client.send_message("/status", f"{model_type} Error: No MIDI file generated!")

        elif model_type == "midi_ddsp":
            arch = platform.machine().lower() 

            midi_file = chosen_file(model_type, args[0])
            if midi_file is None:
                return
            instrument_name = args[1] if len(args) > 1 else "violin"

            with staged(model_type, midi_file) as container_midi_path:
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

        elif model_type == "continuator":
            midi_file = chosen_file(model_type, args[0])
            if midi_file is None:
                return
            try:
                settings = parse_settings(args[1:], CONTINUATOR_SETTINGS, CONTINUATOR_DEFAULTS)
            except SettingError as e:
                client.send_message("/status", f"{model_type} Error: {e}")
                return

            # a new file per continuation, so none overwrites the last (AIM2-35)
            output_name = continuation_name(os.path.basename(midi_file))
            with staged(model_type, midi_file) as container_midi_path:
                continuator_cmd = [
                    "docker", "exec", "aimat-continuator-1",
                    "python", "/continuator/continuate.py",
                    container_midi_path, f"/output/{output_name}", *settings,
                ]

                client.send_message(f"/status", f"{model_type} generating...")
                print(f"[INFO] Running Continuator command: {' '.join(continuator_cmd)}")

                subprocess.run(continuator_cmd, check=True)

            output_file = os.path.join(CONTINUATOR_OUTPUT_DIR, output_name)
            if os.path.exists(output_file):
                print(f"[SUCCESS] {model_type} generation complete! Output saved at: {output_file}")
                client.send_message(f"/status", f"{model_type} generation complete!")
                client.send_message(f"/{model_type}_done", output_file)
                send_profile(model_type, output_file, given_path=midi_file)
            else:
                client.send_message(f"/status", f"{model_type} Error: No output file generated!")

        else:
            client.send_message(f"/status", f"Unknown model type: {model_type}")
            return

        #  blinking stop when generation completes
        if model_type in blinker_events:
            blinker_events[model_type].set()

    except subprocess.CalledProcessError as e:
        client.send_message(f"/status", f"Error running {model_type}: {str(e)}")
    except InputError as e:
        client.send_message("/status", f"{model_type} Error: {e}")


#  OSC listener
def build_server(host, port):
    osc_dispatcher = dispatcher.Dispatcher()
    osc_dispatcher.map("/trigger_model", generate_music)
    return osc_server.ThreadingOSCUDPServer((host, port), osc_dispatcher)


def main():
    global client
    max_host = get_local_ip()
    print(f"Detected local IP: {max_host}")
    max_port = int(os.getenv("OSC_PORT", 7400))
    client = udp_client.SimpleUDPClient(max_host, max_port)

    osc_port = int(os.getenv("OSC_PORT", 5005))
    server = build_server("0.0.0.0", osc_port)
    print(f"Listening for OSC messages on port {osc_port}...")
    server.serve_forever()


if __name__ == "__main__":
    main()
