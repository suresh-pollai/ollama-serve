FROM ollama/ollama:latest
RUN ollama pull llama3:latest
EXPOSE 11434
ENTRYPOINT ["ollama", "serve"]
