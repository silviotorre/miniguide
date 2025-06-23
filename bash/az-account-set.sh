#!/bin/bash
# az-account-set.sh
# Description: Sets the Azure subscription to use.
# Usage: ./az-account-set.sh <SubscriptionNameOrID>
# Dependencies: Azure CLI (az)

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <SubscriptionNameOrID>"
  exit 1
fi

az account set --subscription "$1"
