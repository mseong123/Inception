FROM debian:buster
WORKDIR /var/www/html
RUN apt-get update -y && apt-get install php-fpm php-mysql -y
RUN apt-get install curl -y
RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root
RUN mkdir /run/php
#RUN wp config create --dbname=$WP_DB --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --dbhost=$WP_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
RUN wp core install --url=$DOMAIN_NAME --title=$WP_TITE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
#RUN user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
#RUN sed -i 's/;access.log = log\/$pool.access.log/access.log = log\/$pool.access.log/g' /etc/php/7.3/fpm/pool.d/www.conf
#RUN mkdir /usr/log && touch /usr/log/www.access.log
COPY ./conf/script.sh /
CMD [ "/usr/sbin/php-fpm7.3", "-F"]
#CMD ["/script.sh"]

