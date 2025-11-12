# Use Ubuntu base image
FROM ubuntu:22.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama default API port
EXPOSE 11434

# Start Ollama, wait for it to initialize, then pull Llama3
CMD bash -c "ollama serve & sleep 8 && ollama pull llama3:latest && wait"
