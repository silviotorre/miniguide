#!/bin/bash
# audit-permissions.sh
# Description: Audit file permissions recursively
# Usage: ./audit-permissions.sh <directory>
# Dependencies: ls, less

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

ls -lR "$1" | less
