# Minimal approach - let n8n handle everything
FROM n8nio/n8n:latest

# Just set the environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Use the default everything from the base image
