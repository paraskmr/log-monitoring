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
chmod +x log_monitor.sh utils.sh config.sh
mkdir -p logs tests
```

## Run
```bash
./log_monitor.sh
```

## Test
```bash
bats tests/test_log_monitor.bats
shellcheck log_monitor.sh
shellcheck utils.sh
```

## Performance Monitoring
```bash
/usr/bin/time ./log_monitor.sh
htop
iostat
vmstat
```

## Schedule with Cron
```bash
crontab -e
# Add this line:
*/5 * * * * /full/path/to/log_monitor.sh
```