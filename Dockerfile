# Build the image using a lightweight Alpine Nginx base
FROM nginx:alpine

# Copy the static web files to the default nginx host directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY script.js /usr/share/nginx/html/script.js
COPY img /usr/share/nginx/html/img

# Copy internal Nginx configuration for the website
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 internally
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
