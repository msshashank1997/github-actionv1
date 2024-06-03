# Use an official nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
