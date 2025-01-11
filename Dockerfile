# Base Nginx image
FROM nginx:stable-alpine

# Set a directory in the container for static files
WORKDIR /usr/share/nginx/html

# Copy the pre-compiled WAR artifacts (static files) into the container
COPY war/ .

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]