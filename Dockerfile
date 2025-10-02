# Use the official Nginx base image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to nginx html folder
COPY ./ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
