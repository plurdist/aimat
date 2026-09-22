"""Starting the listener: importing must be side-effect free, running as a script must still serve (AIM2-41)."""
import os
import subprocess
import sys
import time
from pathlib import Path

from conftest import free_port

LISTENER_SCRIPT = Path(__file__).parent.parent / "src" / "aimat" / "osc_listener.py"


def test_importing_the_listener_starts_nothing():
    code = "import aimat.osc_listener; print('imported')"
    try:
        result = subprocess.run([sys.executable, "-c", code], capture_output=True, text=True, timeout=10)
    except subprocess.TimeoutExpired:
        raise AssertionError("import never returned: the module starts a server at import time")
    assert result.returncode == 0, result.stderr
    assert "imported" in result.stdout
    assert "Listening" not in result.stdout


def test_running_as_a_script_still_listens():
    """`aimat start` runs osc_listener.py as a script; that must keep working."""
    port = free_port()
    env = {**os.environ, "OSC_PORT": str(port), "PYTHONUNBUFFERED": "1"}
    proc = subprocess.Popen([sys.executable, str(LISTENER_SCRIPT)], env=env,
                            stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    try:
        deadline = time.monotonic() + 10
        lines = []
        while time.monotonic() < deadline:
            line = proc.stdout.readline()
            if not line:
                break
            lines.append(line)
            if f"Listening for OSC messages on port {port}" in line:
                return
        raise AssertionError(f"listener didn't report listening on {port}; output: {lines}")
    finally:
        proc.terminate()
        proc.wait(timeout=5)
