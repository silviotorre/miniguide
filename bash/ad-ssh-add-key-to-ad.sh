#!/bin/bash
# ad-ssh-add-key-to-ad.sh
# Description: Adds SSH public key to Azure AD user account.
# Usage: ./ad-ssh-add-key-to-ad.sh <userPrincipalName> <publicKeyFile>
# Dependencies: Azure CLI (az)

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <userPrincipalName> <publicKeyFile>"
  exit 1
fi

USER="$1"
KEYFILE="$2"

az ad user update --id "$USER" --set sshPublicKey="$(cat $KEYFILE)"
