FROM ollama/ollama:latest

# Install Node.js
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Preload model
RUN ollama pull llama3

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

ENTRYPOINT ["/bin/bash", "-c", "ollama serve & sleep 5 && node server.js"]