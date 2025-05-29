#!/bin/bash
# chown-file.sh
# Description: Change file ownership
# Usage: ./chown-file.sh <user:group> <filename>
# Dependencies: chown

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <user:group> <filename>"
  exit 1
fi

chown "$1" "$2"
