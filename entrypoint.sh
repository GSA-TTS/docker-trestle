#! /usr/bin/env bash

if [ ! -d /app/docs ]; then
    echo "Mount your compliance documents volume at /app/docs"
    exit 1
fi

cd /app/docs
if [ ! -d /app/docs/.trestle ]; then
    trestle init --govdocs
fi

if [[ ! -f /app/docs/trestle-config.yaml && "$SKIP_TRESTLE_CONFIG" != "true" ]]; then
    cp /app/templates/trestle-config.yaml .
fi

exec "$@"
