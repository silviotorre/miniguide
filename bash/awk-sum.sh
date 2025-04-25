#!/bin/bash
# awk-sum.sh
# Description: Sum all numbers in the second column of a file.
# Usage: ./awk-sum.sh <file>
# Dependencies: awk

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

awk '{sum += $2} END {print sum}' "$1"
