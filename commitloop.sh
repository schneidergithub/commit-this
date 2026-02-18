#!/usr/bin/env bash
set -euo pipefail

COUNT="${1:-1000}"

for i in $(seq 1 "$COUNT"); do
  echo "$(date -u +%FT%TZ) $i" >> commits.log
  git add commits.log
  git commit -m "commit $i"
  git push origin HEAD
done