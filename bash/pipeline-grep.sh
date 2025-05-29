#!/bin/bash
# pipeline-grep.sh
# Description: Filter lines in a file matching a pattern using a pipeline
# Usage: ./pipeline-grep.sh <file> <pattern>
# Dependencies: grep

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <file> <pattern>"
  exit 1
fi

cat "$1" | grep "$2"
