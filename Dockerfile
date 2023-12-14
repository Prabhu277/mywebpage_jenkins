FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y curl net-tools
COPY . /var/www/html/
RUN service nginx start
