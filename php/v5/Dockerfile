FROM php:5-fpm

ADD scripts /scripts
ARG PKG_INSTALL_CMD='apt-get update && apt-get install -y --no-install-recommends'

RUN find /scripts -type f -exec sh {} \;
