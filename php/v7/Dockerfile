FROM nginx/unit:1.21.0-php7.3

ADD scripts /scripts
ARG PKG_INSTALL_CMD='apt-get update && apt-get install -y --no-install-recommends'
ADD v7/externals /externals

RUN find /scripts -type f -exec sh {} \;
