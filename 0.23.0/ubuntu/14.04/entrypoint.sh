#!/bin/sh

PRINCIPAL=${PRINCIPAL:-root}

if [ -n "$SECRET" ]; then
    echo -n "$PRINCIPAL $SECRET" > /tmp/credential
    export MESOS_CREDENTIAL=/tmp/credential
fi

exec "$@"
