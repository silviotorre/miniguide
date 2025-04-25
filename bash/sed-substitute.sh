#!/bin/bash
# sed-substitute.sh
# Description: Replace "foo" with "bar" in a file.
# Usage: ./sed-substitute.sh <file>
# Dependencies: sed

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

sed 's/foo/bar/g' "$1"
