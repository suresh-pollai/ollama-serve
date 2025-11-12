# Use Ubuntu as base
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl sudo

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama default port
EXPOSE 11434

RUN ollama pull llama3.2

# Serve Ollama to all network interfaces
CMD ["ollama", "serve", "--host", "0.0.0.0"]
