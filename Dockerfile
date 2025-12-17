FROM n8nio/n8n:production-23.8.0  # Debian-based image

USER root

RUN apt-get update && apt-get install -y \
    wkhtmltopdf \
    xvfb \
    ttf-mscorefonts-installer \
    fontconfig \
 && rm -rf /var/lib/apt/lists/*

RUN npm install n8n-nodes-htmlpdf-converter

USER node

