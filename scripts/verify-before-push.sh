#!/usr/bin/env bash
set -euo pipefail

./scripts/check-no-emdash.sh

if command -v hugo >/dev/null 2>&1; then
  echo "Running Hugo build check..."
  hugo --minify >/tmp/hugo_build.log
  echo "Hugo build passed."
else
  echo "Hugo not installed locally; skipping local build check."
fi
