#!/bin/bash

set -e

if [ "${1:0:1}" = '-' ]; then
	set -- glide "$@"
fi

if [ "${1:0:2}" = 'go' ]; then
  
  until glide update '\l'; do
    >&2 echo "Git Resource unavaliable!"
    sleep 1
  done
  
  >&2 echo "Git Resource avaliable!"
  
  set -- "$@"
fi

exec "$@"