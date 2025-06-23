#!/bin/bash
# sed-insert-lines.sh
# Description: Insert "New Line" before lines matching "pattern" in a file.
# Usage: ./sed-insert-lines.sh <file>
# Dependencies: sed

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

sed '/pattern/i\New Line' "$1"
