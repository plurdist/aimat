# Step 1: Use the TensorFlow GPU-enabled base image (CUDA 11.2, cuDNN 8, Ubuntu 20.04)
FROM tensorflow/tensorflow:2.10.0-gpu

# Step 2: Install system dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    rm -rf /var/lib/apt/lists/*

# Install system dependencies for pycairo
RUN apt-get update && apt-get install -y \
    libcairo2-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y libsndfile1

# Step 3: Clone the Musika repository
RUN git clone https://github.com/marcoppasini/musika.git /musika

# Install dependencies
COPY requirements-docker.txt /tmp/
RUN pip3 install --no-cache-dir -r /tmp/requirements-docker.txt

# Step 5: Expose required ports for communication
EXPOSE 7860
EXPOSE 6006

# Step 6: Set up a working directory
WORKDIR /musika

# Step 7: Default command (keeping it idle, NOT running the listener)
CMD ["bash"]
