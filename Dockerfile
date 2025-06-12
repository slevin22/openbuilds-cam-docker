FROM ubuntu:latest
RUN  apt-get -y update && apt-get -y install nginx vim nodejs npm
COPY OpenBuilds-CAM /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
COPY default /etc/nginx/sites-available/default
#RUN npm install
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

