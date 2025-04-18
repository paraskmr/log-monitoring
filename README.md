# Log Monitoring System

## Description
This script monitors `/var/log/syslog` for critical log entries (errors, failures, etc.) and emails alerts to an admin while maintaining a log.

## Files
- `log_monitor.sh`: Main script
- `utils.sh`: Logging and mail utility functions
- `config.sh`: Configuration
- `logs/`: Alert logs
- `tests/`: Unit tests

## Setup
```bash
sudo apt update && sudo apt install sendmail bats shellcheck -y
chmod +x *.sh