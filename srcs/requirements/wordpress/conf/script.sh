#!/bin/bash



# create directory to use in nginx container later and also to setup the wordpress conf
mkdir /var/www/
mkdir /var/www/html

cd /var/www/html


rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 

mv wp-cli.phar /usr/local/bin/wp


wp core download --allow-root

#mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

#mv /wp-config.php /var/www/html/wp-config.php


#sed -i -r "s/db1/$WP_DB/1"   wp-config.php
#sed -i -r "s/user/$WP_DB_USER/1"  wp-config.php
#sed -i -r "s/pwd/$WP_DB_PASSWORD/1"    wp-config.php

wp config create --dbname=$WP_DB --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --dbhost=$WP_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root --debug
wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root





wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root


wp theme install astra --activate --allow-root


#wp plugin install redis-cache --activate --allow-root

wp plugin update --all --allow-root

mkdir /usr/log
touch /usr/log/www.access.log
 
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/;access.log = log\/$pool.access.log/access.log = log\/$pool.access.log/g' /etc/php/7.3/fpm/pool.d/www.conf
#sed -i 's/user = www-data/user = nginx/g' /etc/php/7.3/fpm/pool.d/www.conf
#sed -i 's/group = www-data/group = nginx/g' /etc/php/7.3/fpm/pool.d/www.conf


mkdir /run/php



#wp redis enable --allow-root

/usr/sbin/php-fpm7.3 -F
