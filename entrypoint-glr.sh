#! /usr/bin/env bash

# get PATH set properly in gitlab-ci
echo 'export PATH="/app/bin:${PATH}"' > /etc/profile.d/trestle-scripts-path.sh

exec "$@"
