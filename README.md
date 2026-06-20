# System Admin Tool

A suite of system administration tools tied together via an interactive bash menu.

## Available Tools

1. **Snapshot Tool**: Records a snapshot of current system details (OS, user, directory contents).
2. **Audit Tool**: Audits system login accounts, user details, and world-writable files in the home directory.
3. **Disk Space Checker Tool**: Calculates and alerts on disk space usage.
4. **Network Tool**: Records IP configurations, DNS, and runs a ping test.

## Usage

Run the menu script to interact with the tools:
```bash
bash menu.sh
```

Logs and output will be saved inside the `reports/` folder.
