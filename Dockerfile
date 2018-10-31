FROM alpine

ENV FRP_MODEL=frps

RUN set -ex \
  && apk add --no-cache --virtual .build-deps openssl \
  && apk del .build-deps

VOLUME /etc/frp

ADD ./frp /etc/frp
RUN chomd +x entrypoint
ENTRYPOINT [ entrypoint.sh ]
CMD [ "-model=frps","-config=/etc/frp/frps.ini" ]
