#!/bin/bash
# git-clone.sh
# Description: Clone a Git repository.
# Usage: ./git-clone.sh <repository-url>
# Dependencies: git

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <repository-url>"
  exit 1
fi

git clone "$1"
