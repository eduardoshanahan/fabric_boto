FROM alpine:edge

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update
RUN apk add python
RUN apk add --virtual .install_dependencies python-dev build-base py-pip && \
    pip install fabric && \
    pip install boto && \
    rm -r /var/cache/apk && \
    apk del .install_dependencies
