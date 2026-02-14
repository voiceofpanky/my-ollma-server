# Ollama + llama3 on Render

This repo runs **Ollama + llama3** in Docker and can be deployed to **Render** as a web service.  
Optionally, it includes a **Node.js proxy** for clean REST endpoints.

## Structure

- `Dockerfile` – runs Ollama in a container
- `start.sh` – starts Ollama and pulls `llama3`
- `render.yaml` – Render deployment config
- `server.js` – Node proxy (optional)
- `package.json` – Node dependencies

## Local usage

Build image:

```bash
docker build -t ollama-llama3:latest .
