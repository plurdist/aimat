import argparse
import importlib.resources
import os
import platform
import signal
import subprocess
import sys
import psutil
import time

# ---------------------------------------------------------------------
# paths & constants
# ---------------------------------------------------------------------
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
LISTENER_SCRIPT = os.path.join(BASE_DIR, "osc_listener.py")
PID_FILE = os.path.join(os.path.expanduser("~"), "aimat_listener.pid")
LOG_FILE = os.path.join(os.path.expanduser("~"), "aimat_listener.log")

with importlib.resources.path("aimat.docker", "docker-compose.yml") as compose_file:
    COMPOSE_FILE = str(compose_file)

# silence Docker's USERPROFILE warning on macOS/Linux
os.environ.setdefault("USERPROFILE", os.path.expanduser("~"))

# ---------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------
def _set_image_env_vars() -> None:
    arch = platform.machine().lower()
    suffix = "arm-latest" if ("arm" in arch or "aarch64" in arch) else "amd-latest"
    image_map = {
        "MUSIKA_IMAGE":      "plurdist/aimat-musika",
        "BASIC_PITCH_IMAGE": "plurdist/aimat-basic-pitch",
        "MIDI_DDSP_IMAGE":   "plurdist/aimat-midi-ddsp",
    }
    for env_var, repo in image_map.items():
        os.environ[env_var] = f"{repo}:{suffix}"

def _stop_previous_listener() -> None:
    if os.path.exists(PID_FILE):
        with open(PID_FILE) as f:
            old_pid = int(f.read().strip())
        if psutil.pid_exists(old_pid):
            try:
                os.kill(old_pid, signal.SIGTERM)
            except Exception:
                pass
        os.remove(PID_FILE)

def _run_listener_attached() -> None:
    subprocess.run([sys.executable, LISTENER_SCRIPT])

def _start_listener_detached() -> None:
    _stop_previous_listener()
    proc = subprocess.Popen(
        [sys.executable, LISTENER_SCRIPT],
        stdout=open(LOG_FILE, "a"),
        stderr=subprocess.STDOUT,
        start_new_session=True
    )
    with open(PID_FILE, "w") as f:
        f.write(str(proc.pid))
    print(f"[SUCCESS] Listener started in background (PID {proc.pid}).")

def _stop_listener() -> None:
    if not os.path.exists(PID_FILE):
        print("[INFO] No listener PID file found.")
        return
    with open(PID_FILE) as f:
        pid = int(f.read().strip())
    if psutil.pid_exists(pid):
        try:
            os.kill(pid, signal.SIGTERM)
            print(f"[SUCCESS] Listener (PID {pid}) stopped.")
        except Exception as e:
            print(f"[WARNING] Could not stop listener (PID {pid}): {e}")
    else:
        print("[INFO] Listener process already exited.")
    os.remove(PID_FILE)

def _stream_logs() -> None:
    if not os.path.exists(LOG_FILE):
        print("[INFO] No log file yet. Start AIMAT first.")
        return

    print("[INFO] Streaming listener logs – press Ctrl‑C to quit.")
    try:
        with open(LOG_FILE, "r", encoding="utf-8", errors="ignore") as f:
            # Go to end of file
            f.seek(0, os.SEEK_END)
            while True:
                line = f.readline()
                if line:
                    print(line.rstrip())
                else:
                    time.sleep(0.25)
    except KeyboardInterrupt:
        pass


# ---------------------------------------------------------------------
# main commands
# ---------------------------------------------------------------------
def start(run_listener: bool = True, attached_listener: bool = False) -> None:
    print("[INFO] Starting AIMAT…")

    if not os.path.exists(COMPOSE_FILE):
        print("[ERROR] Missing docker‑compose.yml!")
        sys.exit(1)

    _set_image_env_vars()

    subprocess.run(["docker", "compose", "-f", COMPOSE_FILE, "up", "-d"], check=True)
    print("[SUCCESS] AIMAT containers are running!")

    if run_listener:
        if attached_listener:
            _run_listener_attached()
        else:
            _start_listener_detached()
    else:
        print("[INFO] Started without listener (use `aimat stop` to shut down).")

def stop() -> None:
    print("[INFO] Stopping AIMAT…")
    try:
        subprocess.run(["docker", "compose", "-f", COMPOSE_FILE, "down"], check=True)
    except subprocess.CalledProcessError as e:
        print(f"[ERROR] Docker failed to stop containers: {e}")
    _stop_listener()
    print("[SUCCESS] AIMAT has been shut down.")

def restart() -> None:
    stop()
    start()

# ---------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------
def main() -> None:
    parser = argparse.ArgumentParser(description="AIMAT: AI Music Artist Toolkit")
    sub = parser.add_subparsers(dest="command", required=True)

    # start
    p_start = sub.add_parser("start", help="Start AIMAT stack")
    p_start.add_argument("--no-listener", action="store_true",
                         help="Don't start OSC listener")
    p_start.add_argument("--attached-listener", action="store_true",
                         help="Run listener in foreground")

    # stop
    sub.add_parser("stop", help="Stop AIMAT stack and listener")

    # restart
    sub.add_parser("restart", help="Restart AIMAT stack and listener")

    # logs
    sub.add_parser("logs", help="Tail live listener log")

    args = parser.parse_args()

    if args.command == "start":
        start(run_listener=not args.no_listener,
              attached_listener=args.attached_listener)
    elif args.command == "stop":
        stop()
    elif args.command == "restart":
        restart()
    elif args.command == "logs":
        _stream_logs()

if __name__ == "__main__":
    main()