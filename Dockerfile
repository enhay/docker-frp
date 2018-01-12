FROM alpine

MAINTAINER Acris Liu "acrisliu@gmail.com"

ENV FRP_VERSION 0.14.1

RUN set -ex \
    && apk add --no-cache --virtual .build-deps openssl \
    && apk del .build-deps

VOLUME /etc/frp

CMD ["/etc/frp/frpc", "-c", "/etc/frp/frpc.ini"]
