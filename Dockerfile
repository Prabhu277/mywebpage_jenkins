FROM ubuntu:latest
RUN sudo apt-get update -y
RUN sudo apt-get upgrade -y
RUN sudo apt-get install nginx -y
RUN sudo service nginx start
COPY /home/ec2-user/sbs-html/* /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
