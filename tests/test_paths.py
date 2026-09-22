"""normalize_path: file paths as Max sends them on macOS and Windows."""
import os


def test_mac_style_path_from_max_points_at_the_same_file(ol, tmp_path):
    audio = tmp_path / "take1.wav"
    audio.write_bytes(b"")
    from_max = f"Macintosh HD:{audio}"

    assert os.path.samefile(ol.normalize_path(from_max), audio)


def test_windows_backslashes_become_forward_slashes(ol):
    assert ol.normalize_path("C:\\Users\\eric\\take1.wav") == "C:/Users/eric/take1.wav"


def test_surrounding_quotes_and_trailing_slash_are_removed(ol):
    assert ol.normalize_path('"/tmp/my take.wav"') == "/tmp/my take.wav"
    assert ol.normalize_path("/tmp/folder/") == "/tmp/folder"
