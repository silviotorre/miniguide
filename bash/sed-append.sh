#!/bin/bash
# sed-append.sh
# Description: Append "End of Line" after lines matching "pattern" in a file.
# Usage: ./sed-append.sh <file>
# Dependencies: sed

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

sed '/pattern/a\End of Line' "$1"
