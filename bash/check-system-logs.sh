#!/bin/bash
# check-system-logs.sh
# Description: Tail system logs (Linux)
# Usage: ./check-system-logs.sh
# Dependencies: tail, sudo

sudo tail -f /var/log/syslog
