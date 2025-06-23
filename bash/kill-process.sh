#!/bin/bash
# kill-process.sh
# Description: Kill a process by PID (Linux)
# Usage: ./kill-process.sh <pid>
# Dependencies: kill

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <pid>"
  exit 1
fi

kill -9 "$1"
