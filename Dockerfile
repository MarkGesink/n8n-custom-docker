# Debian-based n8n image
FROM n8nio/n8n:production-23.8.0

USER root

# Installeer dependencies voor wkhtmltopdf
RUN apt-get update && apt-get install -y \
    wkhtmltopdf \
    xvfb \
    ttf-mscorefonts-installer \
    fontconfig \
 && rm -rf /var/lib/apt/lists/*

# Installeer de PDF node
RUN npm install n8n-nodes-htmlpdf-converter

# Terug naar n8n gebruiker
USER node

