#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]
then	
	wp config create --dbname=$WP_DB --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --dbhost=$WP_DB_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
	wp config set WP_DEBUG true --allow-root
	wp config set WP_DEBUG_LOG true --allow-root
	### BONUS PART redis ###
	wp config set WP_REDIS_HOST redis --allow-root
	wp config set WP_REDIS_PORT 6379 --raw --allow-root
	### end bonus ###
	wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
	wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root
	wp theme install neve --activate --allow-root
	#### BONUS PART redis ####	
	wp plugin install redis-cache --activate --allow-root
	wp plugin update --all --allow-root
	wp redis enable --allow-root
	### end bonus ###
fi



/usr/sbin/php-fpm7.3 -F
