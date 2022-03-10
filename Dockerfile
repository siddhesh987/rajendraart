#ROM centos-7-systemd
#MAINTAINER  siddhesh
#RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
#RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
#RUN yum update -y
#RUN yum install httpd -y
#CMD ["systemctl start httpd", "systemctl enable httpd"]
#CMD ["/usr/sbin/httpd"]
#CMD ["/usr/sbin/httpd"]
#EXPOSE 80
#COPY index.html /var/www/html/ 

FROM ubuntu:18.04
MAINTAINER 'SIDDHESH'
RUN apt update
RUN apt install apache2 -y
CMD systemctl start apache2
CMD systemctl enable apache2
COPY ./myserver.* /etc/ssl/certs/
COPY ./ssl.conf  /etc/apache2/sites-available/
COPY . /var/www/html/
