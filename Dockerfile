FROM ollama/ollama:latest

# Set the persistent storage path for Ollama models
ENV OLLAMA_MODELS=/root/.ollama

EXPOSE 11434

ENTRYPOINT ["/bin/bash", "-c", "ollama serve & sleep 8 && ollama pull llama3:latest && wait"]
