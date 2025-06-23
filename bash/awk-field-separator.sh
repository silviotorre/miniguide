#!/bin/bash
# awk-field-separator.sh
# Description: Use comma as a field separator to print first column from a CSV file.
# Usage: ./awk-field-separator.sh <file.csv>
# Dependencies: awk

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file.csv>"
  exit 1
fi

awk -F, '{print $1}' "$1"
