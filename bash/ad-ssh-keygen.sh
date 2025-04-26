#!/bin/bash
# ad-ssh-keygen.sh
# Description: Generates a new SSH key pair.
# Usage: ./ad-ssh-keygen.sh <email>
# Dependencies: OpenSSH (ssh-keygen)

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <email>"
  exit 1
fi

ssh-keygen -t rsa -b 4096 -C "$1"
