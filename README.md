# AI Music Artist Toolkit (AIMAT) 
![Status](https://img.shields.io/badge/status-in%20development-orange) ![PyPI](https://img.shields.io/pypi/v/aimat)
> **⚠️ AIMAT is currently under active development.**  
> Features and setup steps may change frequently.
**A modular framework for experimenting with AI in music**  

The AI Music Artist Toolkit (AIMAT) is an environment designed to make working with AI in music easier and more practical for artists, musicians, and creative technologists. By bringing different generative models into a single, reusable workflow, AIMAT lowers some of the technical barriers that might otherwise make these tools difficult to access or experiment with.

AIMAT is also about preserving, repurposing and combining interesting AI music projects, keeping them in one place where they can be explored in a practical, creative setting. It’s designed to help artists experiment with AI-generated sound, explore different parameters, and find new possibilities they might not have come across otherwise.

At the moment, AIMAT supports [Musika!](https://github.com/marcoppasini/musika) (a deep learning model for generating high-quality audio), [Basic Pitch](https://github.com/spotify/basic-pitch) (Automatic Music Transcription) and [Midi DDSP](https://github.com/magenta/midi-ddsp) (audio generation model for synthesizing MIDI), with plans to include other AI music models in the future. It integrates with **Max/MSP, PD, Max for Live**, and other OSC-enabled applications, making AI-generated music easier to incorporate into creative workflows.

---

## 🚀 Features  
- ✔️ **Modular and Expandable** – Easily add and switch between different combinations of AI models.
- ✔️ **OSC Integration** – Send messages from Max/MSP or other OSC software to trigger AI music generation  
- ✔️ **Docker-based** – Simplifies setup and runs in an isolated environment  
- ✔️ **Interactive CLI** – Simplified commands for starting and stopping AIMAT services.  
- ✔️ **Cross-Platform** – Works on **Windows, macOS, and Linux**  

---

## 📥 Installation & Setup  

### **1️⃣ Prerequisites**  

🔹 **Docker** – Install [Docker Desktop](https://www.docker.com/products/docker-desktop)  
🔹 **Miniconda** – Install [Miniconda](https://docs.conda.io/en/latest/miniconda.html) for managing Python dependencies  

---

### **2️⃣ Setting Up AIMAT**  

Once you have **Docker and Conda installed**, follow these steps:  

#### 🐍 **Create a dedicated Conda environment:**
```bash
conda create -n aimat python=3.10
conda activate aimat
```

#### ✅ **Install AIMAT via pip:**
```bash
pip install aimat
```
### **3️⃣ Quick Start**  

Start AIMAT with a single command:

```bash
aimat start
```

This command:
- Starts the Docker containers with your AI models.
- Launches the OSC listener, ready to receive messages.

To stop AIMAT:

```bash
aimat stop
```

## 🛠️ What Happens During Setup?  
✅ **Checks for Docker & Conda** – Ensures all dependencies are installed  
✅ **Creates & Configures the AIMAT Docker Environment** – Automatically Downloads and Configures AI Music models  
✅ **Starts OSC Listener** – Listens for incoming OSC messages to trigger music generation  

---
#### ⚠️ macOS Users with Apple Silicon (M1/M2/M3) - Not Currently Supported 😢

AIMAT does not currently support Apple Silicon Macs (M1/M2/M3) due to incompatibilities with TensorFlow and Docker images that lack ARM support.

---

## 🎵 OSC Usage Examples

Send OSC messages using Max/MSP, Pure Data, or other OSC tools to trigger music generation.

### MIDI-DDSP Synthesis

Example OSC message:

```osc
/midi_ddsp your-midi-file.mid violin
```

Supported instruments:
- violin
- viola
- cello
- double bass
- flute
- oboe
- clarinet
- saxophone
- bassoon
- trumpet
- horn
- trombone
- tuba
- guitar

This triggers synthesis of the given MIDI file using the specified instrument.

### Musika (Audio Generation)

Example OSC message:

```
/musika 0.8 10 techno
```

- `truncation`: Controls randomness (higher = more random)
- `seconds`: Duration of the generated output
- `model`: Choose between `techno`, `misc`, or `pipes`

### Basic Pitch (Audio to MIDI Conversion)

Example OSC message:

```
/basic_pitch <path-to-audio-file>
```

Converts audio to MIDI, saved to your output directory.

## 📂 Output Directories

Generated files are stored by default in your home directory under:
- **Musika:** `~/aimat/musika/output`
- **MIDI-DDSP:** `~/aimat/midi_ddsp/output`
- **Basic Pitch**: `~/aimat/basic_pitch/output`

## ⚠️ Troubleshooting

- **Listener or Docker Issues**: Restart with `aimat restart`
- **Missing Generated Files**: Check container logs with:

```bash
docker logs <container-name>
```

## 🔜 Future Plans

- 🟢 GUI interface for easier model management and monitoring
- 🟢 Integration of more AI music models
- 🟢 Expanded customization through additional OSC commands

## 📜 License

MIT License © Eric Browne
