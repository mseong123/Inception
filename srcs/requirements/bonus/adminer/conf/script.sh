#!bin/bash

wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php" -O /var/www/html/adminer.php
chown -R www-data:www-data /var/www/html/

cd /var/www/html

rm -rf index.html
php -S 0.0.0.0:8080
