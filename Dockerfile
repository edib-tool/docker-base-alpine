FROM alpine:3.3
MAINTAINER Christoph Grabo <edib@markentier.com>

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk --no-cache upgrade
RUN apk --no-cache add ncurses-libs

CMD ["/bin/sh"]
