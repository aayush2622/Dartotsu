#!/usr/bin/env bash
set -euo pipefail

# Expects: DISCORD_WEBHOOK_URL, MESSAGE (preformatted markdown content)

curl -fsS -H "Content-Type: application/json" \
  -X POST \
  -d "$(jq -nc --arg content "$MESSAGE" '{content: $content}')" \
  "$DISCORD_WEBHOOK_URL"
