FROM ubuntu:16.04
MAINTAINER  siddhesh
RUN apt-get update
RUN apt install apache2 -y
RUN /bin/sh -c systemctl start apache2
RUN /bin/sh -c systemctl enable apache2
CMD cp -rv . /var/www/html/
