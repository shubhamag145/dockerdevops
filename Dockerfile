FROM centos:latest
MAINTAINER shubhamag145@gmail.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/zuchristmas.zip /var/www/html
WORKDIR /var/www/html
RUN unzip zuchristmas.zip
RUN cp -rvf zuchristmas-1.0.0/* .
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
