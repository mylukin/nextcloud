#FROM nextcloud:stable-fpm-alpine as mycloud
FROM nextcloud:22-fpm-alpine as mycloud

RUN apk add --no-cache supervisor \
  && mkdir /var/log/supervisord /var/run/supervisord

COPY ./supervisord.conf /

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
