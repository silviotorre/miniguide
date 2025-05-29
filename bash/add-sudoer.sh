#!/bin/bash
# add-sudoer.sh
# Description: Add user to sudoers group
# Usage: ./add-sudoer.sh <username>
# Dependencies: usermod

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

usermod -aG sudo "$1"
