#!/bin/bash
# dmesg-messages.sh
# Description: Show kernel messages
# Usage: ./dmesg-messages.sh
# Dependencies: dmesg, less

dmesg | less
