# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your built app into the Nginx html folder
COPY dist/* /usr/share/nginx/html

# Expose port 80
EXPOSE 3000

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
