FROM n8nio/n8n:latest

USER root

# Installeer benodigde packages met apk
RUN apk add --no-cache \
    wkhtmltopdf \
    xvfb \
    ttf-freefont \
    fontconfig

# Installeer n8n PDF node
RUN npm install n8n-nodes-htmlpdf-converter

USER node

