#!/bin/bash
# git-init.sh
# Description: Initialize a new Git repository in a directory.
# Usage: ./git-init.sh <directory>
# Dependencies: git

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

mkdir "$1"
cd "$1" || exit

git init

echo "# $1" > README.md
echo "Add your license text here." > LICENSE
echo -e "# Logs\n*.log\n\n# Node.js\nnode_modules/\n\n# Python\n__pycache__/" > .gitignore

git add .
git commit -m "Initial commit"

echo "Git repository initialized in $1"
