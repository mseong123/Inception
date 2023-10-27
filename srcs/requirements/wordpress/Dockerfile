FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

#RUN adduser --system nginx && addgroup --system nginx
COPY ./conf/script.sh /
#COPY ./conf/wp-config.php /
#COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
#COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/
WORKDIR /var/www/html

CMD [ "/script.sh" ]
