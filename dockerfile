FROM ubuntu:latest
MAINTAINER  siddhesh
RUN apt-get update
RUN apt install apache2 -y
RUN systemctl start apache2
RUN systemctl enable apache2
CMD cp -rv . /var/www/html/
