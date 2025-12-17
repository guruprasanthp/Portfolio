!/usr/bin/env bash
set -euo pipefail

HOST="${1:-}"
PORT="${2:-443}"

if [[ -z "$HOST" ]]; then
  echo "Usage: $0 <host> [port]"
  exit 1
fi

echo "== DNS =="
command -v dig >/dev/null && dig +short "$HOST" || nslookup "$HOST" || true

echo -e "\n== ICMP ping (may be blocked) =="
ping -c 2 "$HOST" || true

echo -e "\n== Route =="
command -v traceroute >/dev/null && traceroute -m 10 "$HOST" || true

echo -e "\n== TCP Port Check =="
nc -vz "$HOST" "$PORT" || true

echo -e "\n== TLS Handshake (if HTTPS) =="
if [[ "$PORT" == "443" ]]; then
  echo | openssl s_client -connect "${HOST}:${PORT}" -servername "$HOST" 2>/dev/null | head -n 20 || true
fi
