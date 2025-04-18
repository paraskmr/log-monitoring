#!/bin/bash

LOG_FILE="/var/log/syslog"
ALERT_LOG="$(dirname "$0")/logs/log_monitor_alerts.log"
EMAIL="admin@example.com"