#!/usr/bin/env bash
set -e
echo "=== uname ==="; uname -a; echo
echo "=== Disk usage ==="; df -h; echo
echo "=== Top by mem ==="; ps aux | sort -nrk 4 | head -n 6; echo
echo "=== Listening ports (macOS) ==="
if command -v lsof >/dev/null 2>&1; then
  lsof -nP -iTCP -sTCP:LISTEN
else
  netstat -anv -p tcp | grep LISTEN || true
fi
