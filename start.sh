#!/bin/bash

# Start Ollama server
ollama serve &

# Give Ollama time to boot
sleep 5

# Pull TinyLlama model
ollama pull tinyllama || true

# Start Node or your API server
node server.js