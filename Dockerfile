FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN systemctl start nginx
COPY . /var/www/html/
