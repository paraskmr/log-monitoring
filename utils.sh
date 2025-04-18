#!/bin/bash

timestamp() {
    date "+%Y-%m-%d %H:%M:%S"
}

log_activity() {
    echo "$(timestamp): $1" >> "$ALERT_LOG"
}

send_alert() {
    local message="$1"
    echo -e "Subject: [Log Monitor] Critical Error\n\n$message" | sendmail "$EMAIL"
}