# Use Ubuntu as base
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama default port
EXPOSE 11434

# Start Ollama server on all interfaces
CMD ["ollama", "serve", "--host", "0.0.0.0"]
