#!/bin/bash

set -e

if [ "${1:0:1}" = '-' ]; then
	set -- glide "$@"
fi

# update git resource
if git pull > /dev/null 2>&1; then
  >&2 echo "updating git resource -- git pull"
	set -- git pull
fi

# update git resource
if [ "$1" = 'go' ]; then
  until glide update '\l'; do
    >&2 echo "updating go vendor -- glide update"
    sleep 1
  done
  
  >&2 echo "Start Go Server..."
  
  set -- "$@"
fi

exec "$@"