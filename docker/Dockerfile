# Use TensorFlow GPU-enabled base image (CUDA 11.2, cuDNN 8, Ubuntu 20.04)
FROM tensorflow/tensorflow:2.10.0-gpu

# Set up environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary system dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip git \
    libcairo2-dev pkg-config libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

# Clone the Musika repository
RUN git clone https://github.com/marcoppasini/musika.git /musika

# Copy the custom script into the container
COPY scripts/download_models.py /musika/download_models.py

# Copy requirements and install Python dependencies
COPY requirements-docker.txt /tmp/
RUN pip3 install --no-cache-dir -r /tmp/requirements-docker.txt

# Step 5: Run the new script to download models
RUN python /musika/download_models.py

# Expose required ports
EXPOSE 7860 6006

# Set up working directory
WORKDIR /musika

# Default command (keeping it idle, NOT running the listener)
CMD ["bash"]