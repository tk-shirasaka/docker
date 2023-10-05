FROM unit:1.31.0-php8.0

ADD scripts /scripts
ARG PKG_INSTALL_CMD='apt-get update && apt-get install -y --no-install-recommends'
ADD v8/externals /externals

RUN find /scripts -type f -exec sh {} \;
