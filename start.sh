#!/bin/bash

# Start Ollama in the background
ollama serve &

# Give Ollama time to start
sleep 5

# Pull model (optional but recommended)
ollama pull llama3 || true

# Start Node server
node server.js