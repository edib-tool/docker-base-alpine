FROM alpine:3.3
MAINTAINER Christoph Grabo <edib@markentier.com>

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk update && apk upgrade && rm -rf /var/cache/apk/*
RUN apk --update add ncurses-libs && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
