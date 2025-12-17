FROM n8nio/n8n:latest

USER root

# Installeer pdf rendering tools
RUN apt-get update && apt-get install -y \
    libx11-dev \
    libxrender1 \
    libxtst6 \
    libxext6 \
    wkhtmltopdf \
 && rm -rf /var/lib/apt/lists/*

# Installeer de n8n PDF node
RUN npm install n8n-nodes-htmlpdf-converter

# Zet terug naar n8n user
USER node

