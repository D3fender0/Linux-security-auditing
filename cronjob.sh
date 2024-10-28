#!/bin/bash
set -u

# Navigate to the directory containing the auditing script
cd Linux-security-auditing

# Variables
DATE=$(date +%Y%m%d)
HOST=$(hostname)
LOG_DIR="audit-report"
DATA="$LOG_DIR/report-${HOST}.${DATE}.txt"

# Ensure the log directory exists
mkdir -p "$LOG_DIR"

# Run Lynis
./master.sh -A --cronjob > "$DATA"
