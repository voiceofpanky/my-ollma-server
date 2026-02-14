#!/bin/bash
set -e

# Start Ollama server in background
ollama serve &
SERVER_PID=$!

# Give server a moment to start
sleep 5

# Preload llama3 model (safe if already present)
echo "Pulling llama3 model..."
ollama pull llama3 || echo "Model pull failed or already present."

# Wait on server
wait $SERVER_PID