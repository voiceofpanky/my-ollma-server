FROM ollama/ollama:latest

# Ensure we have a shell
SHELL ["/bin/bash", "-c"]

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

CMD ["/start.sh"]