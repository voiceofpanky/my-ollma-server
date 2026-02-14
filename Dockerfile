FROM ollama/ollama:latest

# Override Ollama's ENTRYPOINT so we can run bash + scripts
ENTRYPOINT ["/bin/bash", "-c"]

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

CMD ["/start.sh"]