# Installation Guide

## Requirements
- Bash shell
- `sendmail`
- `bats` for testing
- `shellcheck` for linting

## Steps
```bash
# Clone repo
git clone https://github.com/paraskmr/log-monitoring.git
cd log-monitoring

# Install dependencies
sudo apt install sendmail bats shellcheck -y

# Permissions
chmod +x log_monitor.sh utils.sh config.sh
mkdir -p logs tests

# Run script
./log_monitor.sh

# Run tests
bats tests/test_log_monitor.bats
shellcheck log_monitor.sh
shellcheck utils.sh