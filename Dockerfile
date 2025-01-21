# Use a basic nginx image
FROM nginx:latest

# Copy custom Nginx config file into the container
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy local content (HTML files) to the nginx default location
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
