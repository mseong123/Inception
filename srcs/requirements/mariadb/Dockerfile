FROM debian:buster
RUN apt-get update && apt-get install -y mariadb-server
#COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/configure.sh /
CMD ["/configure.sh"]
