#!/bin/bash

path=$(dirname "$(pwd)/$(dirname $0)")

git clone -b 1.31.0 --depth 1 https://github.com/nginx/unit /tmp/unit
cd /tmp/unit/pkg/docker/

for arg in $@; do
    args=(${arg//:/ })
    lang=${args[0]}
    version=${args[1]}

    echo "Build start: ${lang}"
    make build-${lang}${version} VERSIONS_${lang}=${version}
done

rm -rf /tmp/unit
