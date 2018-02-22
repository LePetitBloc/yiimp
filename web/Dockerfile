FROM guzart/nginx-h5bp:stable-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./assets      /var/web/assets
COPY ./extensions  /var/web/extensions
COPY ./images      /var/web/images
COPY ./favicon.ico /var/web/favicon.ico
COPY ./robots.txt  /var/web/robots.txt
