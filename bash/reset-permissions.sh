#!/bin/bash
# reset-permissions.sh
# Description: Reset permissions to default for directories and files
# Usage: ./reset-permissions.sh <directory>
# Dependencies: find, chmod

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

find "$1" -type d -exec chmod 755 {} \;
find "$1" -type f -exec chmod 644 {} \;
