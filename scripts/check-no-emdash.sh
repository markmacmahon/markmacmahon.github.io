#!/usr/bin/env bash
set -euo pipefail

targets=(README.md AGENTS.md content layouts)

if command -v rg >/dev/null 2>&1; then
  if rg -n "—" "${targets[@]}" >/tmp/mmm_emdash_hits.txt; then
    echo "Em dash check failed: found em dashes:" >&2
    cat /tmp/mmm_emdash_hits.txt >&2
    exit 1
  fi
else
  if grep -RIn "—" "${targets[@]}" >/tmp/mmm_emdash_hits.txt; then
    echo "Em dash check failed: found em dashes:" >&2
    cat /tmp/mmm_emdash_hits.txt >&2
    exit 1
  fi
fi

echo "Em dash check passed."
