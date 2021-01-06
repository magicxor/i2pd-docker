FROM purplei2p/i2pd:release-2.35.0
EXPOSE 7071
USER root
ADD nginx_default.conf /etc/nginx/conf.d/default.conf
RUN apk update \
    && apk add nginx \
    && mkdir -p /run/nginx
ENTRYPOINT (nginx -g 'daemon off;' &) && /entrypoint.sh
