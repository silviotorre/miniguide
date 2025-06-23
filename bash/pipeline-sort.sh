#!/bin/bash
# pipeline-sort.sh
# Description: Sort contents of a file using a pipeline
# Usage: ./pipeline-sort.sh <file>
# Dependencies: sort

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

cat "$1" | sort
