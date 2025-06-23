#!/bin/bash
# sed-regex-replacement.sh
# Description: Replace digits with "#" symbol in a file.
# Usage: ./sed-regex-replacement.sh <file>
# Dependencies: sed

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

sed 's/[0-9]/#/g' "$1"
