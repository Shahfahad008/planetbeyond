FROM centos:latest
MAINTAINER shahfahad110g@gmail.com
RUN yum install httpd \
     zip \
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR	 /var/www/html/
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "FOREGROUND"]
EXPOSE 80
