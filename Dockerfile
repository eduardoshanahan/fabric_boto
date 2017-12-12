FROM eduardoshanahan/fabric:latest

LABEL maintainer 'Eduardo Shanahan <contact@eduardoshanahan.com>'

RUN apk --update \
    add --no-cache --virtual .install_dependencies_fabric_boto \
    py-pip \
&&  pip install boto3 \
&&  apk del .install_dependencies_fabric_boto

ENTRYPOINT ["/bin/sh"]
