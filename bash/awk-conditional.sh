#!/bin/bash
# awk-conditional.sh
# Description: Print lines where the third column is greater than 100.
# Usage: ./awk-conditional.sh <file>
# Dependencies: awk

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

awk '$3 > 100' "$1"
