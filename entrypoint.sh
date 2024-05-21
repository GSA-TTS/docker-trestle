#! /usr/bin/env bash

if [ ! -d /app/docs ]; then
    echo "Mount your compliance documents volume at /app/docs"
    exit 1
fi

cd /app/docs
if [ ! -d /app/docs/.trestle ]; then
    trestle init --govdocs
fi

exec "$@"
