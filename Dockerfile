FROM eduardoshanahan/fabric:1.14.0.1

LABEL maintainer 'Eduardo Shanahan <contact@eduardoshanahan.com>'

RUN apk add --no-cache --virtual .install_dependencies_fabric_boto \
    py-pip \
&&  pip install boto3 \
&&  apk del .install_dependencies_fabric_boto

ENTRYPOINT ["/bin/sh"]
