FROM golang:1.7.1-alpine
MAINTAINER Toby <t.post@hotmail.com>

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/toby1991/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN **None**
ENV NGROK_DATA_PATH /ngrok_data
ENV TUNNEL_ADDR :4443
ENV HTTP_ADDR :80
ENV HTTPS_ADDR :443

EXPOSE 4443
EXPOSE 80
EXPOSE 443

CMD /bin/sh
