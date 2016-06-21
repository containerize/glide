#!/bin/bash

set -e

cmd="$@"

until glide install '\l'; do
  >&2 echo "Git source not ready yet!"
  sleep 1
done

>&2 echo "Git source is ready! - executing command"
exec $cmd