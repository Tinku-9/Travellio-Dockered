# Use a lightweight Nginx image to serve static content
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html file into the Nginx web root directory
# IMPORTANT: Ensure your index.html file is in the same directory as this Dockerfile
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (Nginx default) so you can map it to a port on your host machine
EXPOSE 80

# The default Nginx CMD command runs the server, so we don't need a custom one.
