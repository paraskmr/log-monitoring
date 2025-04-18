# Installation Guide

## Requirements
- Bash shell
- `sendmail`
- `bats` for testing
- `shellcheck` for linting

## Steps
```bash
# Clone repo
git clone https://github.com/yourusername/log-monitoring.git
cd log-monitoring

# Install dependencies
sudo apt install sendmail bats shellcheck -y

# Permissions
chmod +x *.sh
mkdir -p logs testsC