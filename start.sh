#!/bin/bash

# Start Ollama server in background
ollama serve &

# Give Ollama time to boot
sleep 5

# Pull TinyLlama model
ollama pull tinyllama || true

# Start Node server in foreground (required for Render)
node server.js