### AI Music Artist Toolkit (AIMAT)
**A modular framework for experimenting with AI in music**  

The AI Music Artist Toolkit (AIMAT) is a flexible framework designed to make working with AI in music easier and more practical for artists, musicians, and creative technologists. By bringing different generative models into a single, reusable workflow, AIMAT lowers some of the technical barriers that might otherwise make these tools difficult to access or experiment with.

Beyond being just a tool, AIMAT is also about preserving and repurposing interesting AI music projects, keeping them in one place where they can be explored in a practical, creative setting. It’s designed to help artists experiment with AI-generated sound, explore different parameters, and find new possibilities they might not have come across otherwise.

At the moment, AIMAT supports **Musika**, a deep learning model for generating high-quality audio, with plans to include other AI music models in the future. It integrates with **Max/MSP, PD, Max for Live**, and other OSC-enabled applications, making AI-generated music easier to incorporate into creative workflows.

---

## 🚀 Features  
✔️ **Modular Design** – Musika is the first integrated model, with support for others planned  
✔️ **OSC Integration** – Send messages from Max/MSP or other OSC software to trigger AI music generation  
✔️ **Docker-based** – Simplifies setup and runs in an isolated environment  
✔️ **Conda-Managed Listener** – Uses Python OSC to communicate with external applications  
✔️ **Cross-Platform** – Works on **Windows, macOS, and Linux**  

---

## 📥 Installation & Setup  

### **1️⃣ Prerequisites**  

🔹 **Docker** – Install [Docker Desktop](https://www.docker.com/products/docker-desktop)  
🔹 **Miniconda** – Install [Miniconda](https://docs.conda.io/en/latest/miniconda.html) for managing Python dependencies  

---

### **2️⃣ Setting Up AIMAT**  

Once you have **Docker and Conda installed**, follow these steps:  

#### ✅ **Windows (PowerShell)**
1. Open **PowerShell**  
2. Navigate to the repo folder  
   ```powershell
   cd path\to\aimat
   ```
3. Run the setup script  
   ```powershell
   .\scripts\setup.ps1
   ```

#### ✅ **macOS/Linux (Bash)**
1. Open **Terminal**  
2. Navigate to the repo folder  
   ```bash
   cd /path/to/aimat
   ```
3. Run the setup script  
   ```bash
   ./scripts/setup.sh
   ```

---

## 🛠️ What Happens During Setup?  
✅ **Checks for Docker & Conda** – Ensures all dependencies are installed  
✅ **Creates & Configures Docker Container** – Downloads the latest AI music model  
✅ **Sets Up Conda Environment** – Creates an isolated Python environment (`aimat`)  
✅ **Starts OSC Listener** – Listens for incoming OSC messages to trigger music generation  

---

## 🎵 Usage: Triggering Music Generation  

### **Sending OSC Messages (Example for Max/MSP)**
To generate music, send an **OSC message** to the listener:  

| Address       | Value 1 (Truncation) | Value 2 (Seconds) | Value 3 (Model) |
|--------------|------------------|----------------|------------|
| `/trigger_musika` | `1.5` (float) | `20` (int) | `"techno"` (string) |

**Example:**  
- **Truncation:** Controls randomness (lower = predictable, higher = experimental)  
- **Seconds:** Duration of the generated output  
- **Model:** `"techno"` or `"misc"` (future models can be added)  

---

## 🛑 Stopping the System  
To **manually stop** the AI Music Toolkit:  
```powershell
docker stop musika-container
```
or  
```bash
docker stop musika-container
```

---

## ❓ Troubleshooting  

### **1. Docker Not Running?**  
- Ensure **Docker Desktop** is running  
- Restart your computer if needed  

### **2. Conda Environment Not Found?**  
Run:  
```powershell
conda env list
```
If `aimt` is missing, recreate it:  
```powershell
conda env create -f environment.yml
```

### **3. No Generated File?**  
- Ensure the **output directory** exists (`~/musika_outputs` or `C:\Users\YourName\musika_outputs`)  
- Check container logs:  
  ```bash
  docker logs musika-container
  ```
---

## 🔜 Future Plans  

🟢 **More AI Models** – Support for models beyond **Musika**  
🟢 **Graphical Interface** – A GUI for easy control and setup  
🟢 **Standalone Installer** – User-friendly setup without manual Docker/Conda steps  

---

## 🏗️ Contributing  

Interested in **extending the AI Music Toolkit**? Fork the repo, add a model, and submit a PR!  

---

## 📜 License  

???

---
