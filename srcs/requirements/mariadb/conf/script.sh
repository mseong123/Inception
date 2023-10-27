#!/bin/bash

chown -R mysql:mysql /var/lib/mysql

#service mysql start 


echo "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%' ;" >> db1.sql
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysqld --user=mysql < db1.sql

kill $(cat /var/run/mysqld/mysqld.pid)

service mysql stop

mysqld --user=mysql --console
