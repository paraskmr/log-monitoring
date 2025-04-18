#!/bin/bash

source "$(dirname "$0")/config.sh"
source "$(dirname "$0")/utils.sh"

filter_critical() {
    grep -Ei "error|critical|fail" "$LOG_FILE" | tail -n 5
}

main() {
    ERRORS=$(filter_critical)
    if [ -n "$ERRORS" ]; then
        send_alert "$ERRORS"
        log_activity "Alert sent with errors: $ERRORS"
    else
        log_activity "No critical errors found."
    fi
}

main