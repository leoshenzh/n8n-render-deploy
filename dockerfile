FROM n8nio/n8n:latest

WORKDIR /home/node

# Copy any custom configurations
COPY . .

# Expose the port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
