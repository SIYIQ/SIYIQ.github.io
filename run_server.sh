#!/usr/bin/env bash

set -euo pipefail

server_port="${1:-8000}"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Error: Python 3 is required to preview this site." >&2
  exit 1
fi

if ! [[ "$server_port" =~ ^[0-9]+$ ]] || (( server_port < 1 || server_port > 65535 )); then
  echo "Error: port must be an integer between 1 and 65535." >&2
  exit 1
fi

cd "$script_dir"
echo "Preview server: http://127.0.0.1:${server_port}"
echo "Press Control+C to stop."
python3 -m http.server "$server_port" --bind 127.0.0.1
