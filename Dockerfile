FROM alpine:3.4

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update && apk add python && \
    apk add --virtual .install_dependencies python-dev build-base py-pip && \
    pip install fabric && \
    pip install boto3 && \
    rm -r /var/cache/apk && \
    apk del .install_dependencies

CMD ["/bin/sh"]
