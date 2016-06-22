#!/bin/bash

set -e

gocmd="$@"

until $gocmd '\l'; do
  >&2 echo "Git source not ready yet!"
  sleep 1
done