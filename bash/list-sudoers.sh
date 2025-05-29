#!/bin/bash
# list-sudoers.sh
# Description: List sudoers group members
# Usage: ./list-sudoers.sh
# Dependencies: grep

grep '^sudo' /etc/group
