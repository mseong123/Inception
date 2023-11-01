FROM debian:buster
RUN apt-get update && apt-get install -y redis
EXPOSE 6379
COPY ./conf/redis.sh /
CMD [ "./redis.sh" ]
