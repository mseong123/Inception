FROM debian:buster
RUN apt-get update && apt-get install node.js -y
RUN apt-get install npm -y
RUN npm install -g express-generator
RUN express site
WORKDIR /site
RUN npm install
RUN sed -i "s/app.use('\/', indexRouter);/ /g" ./app.js
COPY ./conf/index.html ./public
COPY ./conf/script.js ./public/javascripts
COPY ./conf/style.css ./public/stylesheets
CMD [ "npm" , "start" ]

