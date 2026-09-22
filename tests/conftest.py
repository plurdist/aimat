"""
Shared fixtures for the OSC-boundary tests (AIM2-14, AIM2-41).

The tests talk to the listener the way Max does: they send /trigger_model over
UDP and read the replies. Docker is replaced by FakeDocker, which behaves like
the containers (reads /input, writes /output) using the same folder mounts as
docker-compose.yml, so no containers or model weights are needed.
"""
import re
import socket
import subprocess
import sys
import threading
import time
from dataclasses import dataclass, field
from pathlib import Path
from types import SimpleNamespace

import pytest
from pythonosc import dispatcher, osc_server, udp_client


def free_port():
    with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
        s.bind(("127.0.0.1", 0))
        return s.getsockname()[1]


# ---------------------------------------------------------------------
# the listener module
# ---------------------------------------------------------------------
@pytest.fixture(scope="session")
def ol():
    """Import aimat.osc_listener, failing fast (not hanging) if the import starts a server."""
    try:
        probe = subprocess.run(
            [sys.executable, "-c", "import aimat.osc_listener"],
            capture_output=True, text=True, timeout=10,
        )
    except subprocess.TimeoutExpired:
        pytest.fail("Importing aimat.osc_listener never returns: it starts a server "
                    "at import time (AIM2-41).", pytrace=False)
    if probe.returncode != 0:
        pytest.fail(f"Importing aimat.osc_listener failed:\n{probe.stderr}", pytrace=False)

    import aimat.osc_listener as module
    return module


# ---------------------------------------------------------------------
# ~/aimat folders, redirected to a temp directory
# ---------------------------------------------------------------------
@dataclass
class AimatHome:
    root: Path
    musika_out: Path
    basic_pitch_out: Path
    midi_ddsp_out: Path
    continuator_out: Path

    @property
    def mounts(self):
        """Container folder -> host folder, per service. Mirrors docker-compose.yml."""
        return {
            "musika":      {"/output": self.musika_out},
            "basic_pitch": {"/input": self.musika_out,      "/output": self.basic_pitch_out},
            "midi_ddsp":   {"/input": self.basic_pitch_out, "/output": self.midi_ddsp_out},
            "continuator": {"/input": self.basic_pitch_out, "/output": self.continuator_out},
        }


@pytest.fixture
def aimat_home(tmp_path, monkeypatch, ol):
    root = tmp_path / "aimat"
    home = AimatHome(
        root=root,
        musika_out=root / "musika" / "output",
        basic_pitch_out=root / "basic_pitch" / "output",
        midi_ddsp_out=root / "midi_ddsp" / "output",
        continuator_out=root / "continuator" / "output",
    )
    for d in (home.musika_out, home.basic_pitch_out, home.midi_ddsp_out, home.continuator_out):
        d.mkdir(parents=True)
    monkeypatch.setattr(ol, "MUSIKA_OUTPUT_DIR", str(home.musika_out))
    monkeypatch.setattr(ol, "BASIC_PITCH_OUTPUT_DIR", str(home.basic_pitch_out))
    monkeypatch.setattr(ol, "MIDI_DDSP_OUTPUT_DIR", str(home.midi_ddsp_out))
    monkeypatch.setattr(ol, "CONTINUATOR_OUTPUT_DIR", str(home.continuator_out))
    return home


# ---------------------------------------------------------------------
# fake docker
# ---------------------------------------------------------------------
@dataclass
class Call:
    cmd: object          # str today (shell=True); a list once AIM2-8 is fixed
    shell: bool

    @property
    def text(self):
        return self.cmd if isinstance(self.cmd, str) else " ".join(map(str, self.cmd))


@dataclass
class FakeDocker:
    """
    Stands in for `docker exec`. Modes:
      "works"          read the input (fail if it's missing), write one output file
      "writes_nothing" exit 0 without writing anything
      "fails"          exit 1
    """
    home: AimatHome
    mode: str = "works"
    delay_after_write: float = 0.0
    calls: list = field(default_factory=list)
    _lock: threading.Lock = field(default_factory=threading.Lock)
    _count: int = 0

    EXTENSIONS = {"musika": ".wav", "basic_pitch": ".mid", "midi_ddsp": ".wav", "continuator": ".mid"}

    def run(self, cmd, **kwargs):
        call = Call(cmd=cmd, shell=bool(kwargs.get("shell")))
        with self._lock:
            self.calls.append(call)
        text = call.text

        if self.mode == "fails":
            raise subprocess.CalledProcessError(1, cmd)

        service = re.search(r"aimat-(\w+?)-1", text).group(1)
        mounts = self.home.mounts[service]

        # The model can only read files that exist in the folder mounted at /input
        for container_path in re.findall(r"/input/[^\s\"']+", text):
            host_path = mounts["/input"] / container_path[len("/input/"):]
            if not host_path.exists():
                raise subprocess.CalledProcessError(1, cmd)

        if self.mode == "writes_nothing":
            return subprocess.CompletedProcess(cmd, 0)

        named = re.search(r"/output/([^\s\"']+)", text)
        if named:
            target = mounts["/output"] / named.group(1)
        else:
            with self._lock:
                self._count += 1
                n = self._count
            target = mounts["/output"] / f"fake_{n}{self.EXTENSIONS[service]}"
        target.write_bytes(b"fake output")
        time.sleep(self.delay_after_write)
        return subprocess.CompletedProcess(cmd, 0)

    @property
    def last(self):
        return self.calls[-1]


@pytest.fixture
def fake_docker(aimat_home, monkeypatch, ol):
    fake = FakeDocker(home=aimat_home)
    monkeypatch.setattr(ol, "subprocess", SimpleNamespace(
        run=fake.run,
        CalledProcessError=subprocess.CalledProcessError,
        check_output=subprocess.check_output,
    ))
    return fake


# ---------------------------------------------------------------------
# "Max": receives the listener's replies
# ---------------------------------------------------------------------
class Replies:
    def __init__(self):
        self.messages = []
        self._cond = threading.Condition()
        d = dispatcher.Dispatcher()
        d.set_default_handler(self._on_message)
        self.server = osc_server.ThreadingOSCUDPServer(("127.0.0.1", 0), d)
        self.port = self.server.server_address[1]
        threading.Thread(target=self.server.serve_forever, daemon=True).start()

    def _on_message(self, address, *args):
        with self._cond:
            self.messages.append((address, args))
            self._cond.notify_all()

    def of(self, address):
        with self._cond:
            return [args for addr, args in self.messages if addr == address]

    def statuses(self):
        return [args[0] for args in self.of("/status")]

    def wait_for(self, address, count=1, timeout=3.0):
        """Wait until `count` messages have arrived on `address`; return their arguments."""
        deadline = time.monotonic() + timeout
        with self._cond:
            while True:
                found = [args for addr, args in self.messages if addr == address]
                if len(found) >= count:
                    return found
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    raise AssertionError(
                        f"expected {count}x {address} within {timeout}s; got: {self.messages}")
                self._cond.wait(remaining)

    def wait_for_status(self, predicate, timeout=3.0):
        """Wait for a /status message matching `predicate`; return its text."""
        deadline = time.monotonic() + timeout
        with self._cond:
            while True:
                for addr, args in self.messages:
                    if addr == "/status" and predicate(args[0]):
                        return args[0]
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    raise AssertionError(f"no matching /status within {timeout}s; got: {self.statuses()}")
                self._cond.wait(remaining)

    def close(self):
        self.server.shutdown()
        self.server.server_close()


@pytest.fixture
def replies():
    r = Replies()
    yield r
    r.close()


# ---------------------------------------------------------------------
# the listener under test
# ---------------------------------------------------------------------
class _SilentClient:
    """Swallows messages from blinker threads that are still winding down at teardown."""
    def send_message(self, *_):
        pass


def _stop_blinkers(ol, timeout=3.0):
    # A blinker re-reads blinker_events[model] on every tick, so setting the current
    # events stops every blinker for that model, including ones whose own event was
    # overwritten (AIM2-39). Repeat in case a blinker registers a fresh event late.
    deadline = time.monotonic() + timeout
    while True:
        for event in list(ol.blinker_events.values()):
            event.set()
        alive = [t for t in threading.enumerate() if "status_blinker" in t.name and t.is_alive()]
        if not alive:
            return
        if time.monotonic() > deadline:
            raise RuntimeError(f"blinker threads still running after teardown: {alive}")
        for thread in alive:
            thread.join(timeout=0.6)


@dataclass
class Listener:
    port: int
    _sender: udp_client.SimpleUDPClient

    def trigger(self, model, *args):
        self._sender.send_message("/trigger_model", [model, *args])


@pytest.fixture
def listener(ol, replies, fake_docker):
    ol.client = udp_client.SimpleUDPClient("127.0.0.1", replies.port)
    server = ol.build_server("127.0.0.1", 0)
    threading.Thread(target=server.serve_forever, daemon=True).start()
    port = server.server_address[1]

    yield Listener(port=port, _sender=udp_client.SimpleUDPClient("127.0.0.1", port))

    server.shutdown()
    ol.client = _SilentClient()
    _stop_blinkers(ol)
    server.server_close()
    ol.client = None
