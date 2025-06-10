# Use the official n8n image as base
FROM n8nio/n8n:latest

# Switch to root user to fix permissions
USER root

# Set the working directory inside the container
WORKDIR /home/node

# Create directories for n8n data with proper permissions
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod -R 755 /home/node/.n8n

# Switch back to node user for security
USER node

# Set environment variables for n8n
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_LOG_LEVEL=info
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port 5678 (this is where n8n runs)
EXPOSE 5678

# Use the full path to n8n and start it
CMD ["/usr/local/bin/node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
