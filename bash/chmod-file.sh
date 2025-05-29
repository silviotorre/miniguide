#!/bin/bash
# chmod-file.sh
# Description: Change file permissions to 755
# Usage: ./chmod-file.sh <filename>
# Dependencies: chmod

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

chmod 755 "$1"
