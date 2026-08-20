#!/usr/bin/env bash
set -euo pipefail

# Expects: DISCORD_WEBHOOK_URL, RELEASE_NOTES, LATEST_TAG, GITHUB_REPOSITORY

features=$(echo "$RELEASE_NOTES" | grep -iE '^\*\s\[[a-f0-9]+\]\(.*\):\sfeat' | head -n 5 || true)
fixes=$(echo "$RELEASE_NOTES" | grep -iE '^\*\s\[[a-f0-9]+\]\(.*\):\s(fix|bug|improvement|patch)' | head -n 5 || true)
chores=$(echo "$RELEASE_NOTES" | grep -iE '^\*\s\[[a-f0-9]+\]\(.*\):\s(chore|docs|build|ci)' | head -n 5 || true)

: > formatted_notes.txt
if [[ -n "$features" ]]; then
  echo "**🚀 Features**" >> formatted_notes.txt
  echo "$features" >> formatted_notes.txt
  echo "" >> formatted_notes.txt
fi
if [[ -n "$fixes" ]]; then
  echo "**🐛 Fixes**" >> formatted_notes.txt
  echo "$fixes" >> formatted_notes.txt
  echo "" >> formatted_notes.txt
fi
if [[ -n "$chores" ]]; then
  echo "**🛠 Chores**" >> formatted_notes.txt
  echo "$chores" >> formatted_notes.txt
  echo "" >> formatted_notes.txt
fi

FORMATTED_NOTES=$(cat formatted_notes.txt)
FORMATTED_NOTES=$(echo "$FORMATTED_NOTES" | sed -E 's/\): [^:]+:/) :/g')

default_color="#1ac4c5"
hex_to_decimal() { printf '%d' "0x${1#"#"}"; }
embed_color=$(hex_to_decimal "$default_color")
VERSION="${VERSION:-$LATEST_TAG}"

discord_data=$(jq -nc \
  --arg field_value "${FORMATTED_NOTES}

[📌 Full changelog](https://github.com/${GITHUB_REPOSITORY}/releases/tag/${LATEST_TAG})" \
  --arg footer_text "Version $VERSION" \
  --arg timestamp "$(date -u +%Y-%m-%dT%H:%M:%S.000Z)" \
  --argjson embed_color "$embed_color" \
  '{
    "content": "<@&1298977336124903457>",
    "embeds": [{
      "title": "New App Version Dropped 🔥",
      "color": $embed_color,
      "description": $field_value,
      "footer": { "text": $footer_text },
      "timestamp": $timestamp
    }]
  }')

curl -fsS -H "Content-Type: application/json" \
  -X POST \
  -d "$discord_data" \
  "$DISCORD_WEBHOOK_URL"
