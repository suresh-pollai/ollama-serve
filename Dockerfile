FROM ollama/ollama:latest

EXPOSE 11434

ENTRYPOINT ["/bin/bash", "-c", "ollama serve & sleep 8 && ollama pull llama3:latest && wait"]
