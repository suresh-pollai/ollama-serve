# Use Ubuntu as base
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama default port
EXPOSE 11434

CMD bash -c "ollama serve & sleep 8 && ollama pull llama3:latest && wait"
