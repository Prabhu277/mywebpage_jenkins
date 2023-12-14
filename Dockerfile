FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN service nginx start
COPY /home/ec2-user/sbs-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
