FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN service nginx start
COPY . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
