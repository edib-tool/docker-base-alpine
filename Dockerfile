FROM alpine:3.4
MAINTAINER Christoph Grabo <edib@markentier.com>

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk --no-cache upgrade
RUN apk --no-cache add ncurses-libs

CMD ["/bin/sh"]
