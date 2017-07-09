FROM eduardoshanahan/python:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --update \
    add --virtual .install_dependencies \
    gcc \
    musl-dev \
    python-dev \
    libffi-dev \
    openssl-dev \
    build-base \
    py-pip \
&&  pip install --upgrade pip \
&&  pip install cffi \
&&  pip install fabric \
&&  pip install boto3 \
&&  rm -r /var/cache/apk \
&&  apk del .install_dependencies

CMD ["/bin/sh"]
