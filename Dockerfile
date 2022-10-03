FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
volume index.html /usr/share/nginx/html/
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
