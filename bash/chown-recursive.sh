#!/bin/bash
# chown-recursive.sh
# Description: Recursively change ownership of a directory
# Usage: ./chown-recursive.sh <user:group> <directory>
# Dependencies: chown

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <user:group> <directory>"
  exit 1
fi

chown -R "$1" "$2"
