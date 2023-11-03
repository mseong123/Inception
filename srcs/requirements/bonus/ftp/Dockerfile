FROM debian:buster
RUN apt-get update && apt-get install -y vsftpd
COPY ./conf/vsftpd.conf /etc/
COPY ./conf/script.sh /
CMD [ "/script.sh" ]
