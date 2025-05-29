#!/bin/bash
# grep-error-syslog.sh
# Description: Filter last 100 lines of syslog for "error"
# Usage: ./grep-error-syslog.sh
# Dependencies: tail, grep

tail -n 100 /var/log/syslog | grep "error"
