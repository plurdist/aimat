import os
from types import SimpleNamespace
from models import Models_functions

# Suppress TensorFlow logging
os.environ["TF_CPP_MIN_LOG_LEVEL"] = "3"

print("Downloading Musika models...")

# minimal args / dummy object
args = SimpleNamespace(base_path="/musika", mixed_precision=False)

# init model functions with minimal args
M = Models_functions(args)

# call download function
M.download_networks()

print("Model download completed!")
