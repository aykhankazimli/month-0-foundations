#!/usr/bin/env bash
set -e
echo "=== uname ==="; uname -a; echo
echo "=== Disk usage ==="; df -h; echo
echo "=== Top by mem ==="; ps aux --sort=-%mem | head -n 6; echo
echo "=== Listening ports ==="; ss -tuln || netstat -tuln
