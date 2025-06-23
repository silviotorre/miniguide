#!/bin/bash
# pipeline-ls-awk.sh
# Description: Display file name and size from ls -l output using awk
# Usage: ./pipeline-ls-awk.sh
# Dependencies: ls, awk

ls -l | awk '{print $9, $5}'
