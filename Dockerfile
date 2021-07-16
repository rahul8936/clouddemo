FROM centos:latest
MAINTAINER rahulsherkar8936@gmail.com
RUN tum install -y httpd \
zip \
unzip
ADD https://www.free.css.com/assets/files/free-css-templates/dowmload/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
CMD [* /usr/sbin/httpd", *.O","FOREGROUND"]
EXPOSE 80
