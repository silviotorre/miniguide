#!/bin/bash
# tail-syslog.sh
# Description: Tail the system log
# Usage: ./tail-syslog.sh
# Dependencies: tail

tail -f /var/log/syslog
