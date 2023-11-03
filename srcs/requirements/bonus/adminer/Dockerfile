FROM debian:buster
RUN apt-get update && apt-get install wget php php-mysql -y
COPY ./conf/script.sh /
CMD [ "./script.sh" ]
EXPOSE 8080
