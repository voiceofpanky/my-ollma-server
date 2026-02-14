FROM ollama/ollama:latest

# Install Node.js
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

WORKDIR /app

# Copy Node files
COPY package*.json ./
RUN npm install
COPY . .

# Start Ollama + Node together
ENTRYPOINT ["/bin/bash", "-c", "ollama serve & sleep 5 && node server.js"]