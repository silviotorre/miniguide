#!/bin/bash
# sed-delete-lines.sh
# Description: Remove lines containing "delete" from a file.
# Usage: ./sed-delete-lines.sh <file>
# Dependencies: sed

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

sed '/delete/d' "$1"
