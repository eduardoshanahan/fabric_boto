FROM eduardoshanahan/fabric:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --update \
    add --no-cache --virtual .install_dependencies_fabric_boto \
    py-pip \
&&  pip install boto3 \
&&  apk del .install_dependencies_fabric_boto

CMD ["/bin/sh"]
