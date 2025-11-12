# Use official Ollama base image (includes binaries and dependencies)
FROM ollama/ollama:latest

# Expose Ollama default API port
EXPOSE 11434

# Start the Ollama server and automatically pull Llama 3 (8B variant)
CMD bash -c "ollama serve & sleep 8 && ollama pull llama3:latest && wait"
