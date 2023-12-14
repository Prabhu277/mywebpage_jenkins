FROM ubuntu:latest

# Update package lists and install Nginx, curl, and net-tools
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y nginx curl net-tools

# Copy the content of your application to the default Nginx web root directory
COPY . /var/www/html/

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
