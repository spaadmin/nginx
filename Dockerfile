FROM centos:centos7.1.1503
MAINTAINER Kohji Murakami
ENV container docker
ENV http_proxy http://proxy.your.site.com:8080
ENV https_proxy http://proxy.your.site.com:8080
RUN yum update -y && yum clean all
RUN yum swap -y fakesystemd systemd && yum clean all
RUN yum install -y epel-release && yum clean all
RUN yum install -y nginx && yum clean all
ADD nginx.conf /etc/nginx/
RUN echo "Hello Nginx." > /usr/share/nginx/html/index.html
RUN systemctl enable nginx
EXPOSE 80
