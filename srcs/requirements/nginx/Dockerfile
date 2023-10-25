FROM debian:buster
RUN apt-get update
RUN apt-get install -y -q nginx
RUN mkdir -p /etc/nginx/ssl
COPY ./conf/global.conf /etc/nginx/conf.d/global.conf
COPY ./tools/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
COPY ./tools/nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
