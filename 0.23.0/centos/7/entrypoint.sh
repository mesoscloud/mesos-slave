#!/bin/sh

PRINCIPAL=${PRINCIPAL:-root}

if [ -n "$SECRET" ]; then
    echo -n "$PRINCIPAL $SECRET" > /tmp/credentials
    export MESOS_CREDENTIALS=/tmp/credentials
fi

exec "$@"
