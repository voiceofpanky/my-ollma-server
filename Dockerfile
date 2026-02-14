FROM ollama/ollama:latest

# Install Node.js 18
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Use a wait script or combined command
# Ensure OLLAMA_HOST is set to allow the Node app to connect locally
ENV OLLAMA_HOST=0.0.0.0
EXPOSE 11434 10000

ENTRYPOINT ["/bin/bash", "-c", "ollama serve & sleep 5 && node server.js"]