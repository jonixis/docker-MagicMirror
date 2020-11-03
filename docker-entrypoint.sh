#!/bin/bash
set -e

if [ ! "$(ls -A /opt/magic_mirror/modules/default)" ]; then
    cp -Rn /opt/default_modules/. /opt/magic_mirror/modules
fi

if [ ! "$(ls -A /opt/magic_mirror/config)" ]; then
    cp /opt/magic_mirror/mm-docker-config.js /opt/magic_mirror/config/config.js
fi

./install-modules.sh

exec "$@"
