#!/bin/bash
# view-permissions.sh
# Description: View file permissions
# Usage: ./view-permissions.sh <filename>
# Dependencies: ls

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

ls -l "$1"
