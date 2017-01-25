FROM alpine:3.5
MAINTAINER Christoph Grabo <edib@markentier.com>

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk --no-cache upgrade && \
    apk --no-cache add ncurses-libs

CMD ["/bin/sh"]
