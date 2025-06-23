#!/bin/bash
# awk-print-columns.sh
# Description: Print first and third columns of a file separated by space.
# Usage: ./awk-print-columns.sh <file>
# Dependencies: awk

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

awk '{print $1, $3}' "$1"
