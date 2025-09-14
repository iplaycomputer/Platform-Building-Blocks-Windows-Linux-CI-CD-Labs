# Minimal web sample for CI demo
FROM nginx:stable-alpine

# Accept BUILD_ID from the workflow
ARG BUILD_ID

# Copy static HTML into nginx default path
COPY index.html /usr/share/nginx/html/index.html

# Replace placeholder {{BUILD_ID}} with actual build id
RUN sed -i "s/{{BUILD_ID}}/${BUILD_ID}/g" /usr/share/nginx/html/index.html
