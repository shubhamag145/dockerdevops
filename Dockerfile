FROM centos:latest
MAINTAINER shubhamag145@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/meticulous.zip
WORKDIR /var/www/html
RUN unzip meticulous.zip
RUN cp -rvf meticulous/* .
RUN rm -rf meticulous meticulous.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

