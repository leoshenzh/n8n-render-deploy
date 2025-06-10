# Use the official n8n image as base
FROM n8nio/n8n:latest

# Set the working directory inside the container
WORKDIR /home/node

# Set environment variables for n8n
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_LOG_LEVEL=info

# Create directories for n8n data
RUN mkdir -p /home/node/.n8n

# Expose port 5678 (this is where n8n runs)
EXPOSE 5678

# Command to start n8n when container starts
CMD ["n8n", "start"]
