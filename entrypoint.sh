#!/bin/bash

set -e

gocmd="$@"

until glide install && exec $gocmd; do
  >&2 echo "Git source not ready yet!"
  sleep 1
done