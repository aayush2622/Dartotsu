#!/usr/bin/env bash
set -euo pipefail

# Expects: DISCORD_WEBHOOK_URL, GOOGLE_FOLDER_ANDROID (optional),
# APK_DOWNLOAD_LINK, WINDOWS_DOWNLOAD_LINK, LINUX_DOWNLOAD_LINK,
# IOS_DOWNLOAD_LINK, MACOS_DOWNLOAD_LINK

APK_MESSAGE=""
WINDOWS_MESSAGE=""
LINUX_MESSAGE=""
IOS_MESSAGE=""
MACOS_MESSAGE=""

if [[ -n "${APK_DOWNLOAD_LINK:-}" ]]; then
  APK_MESSAGE="[Download APK](https://drive.google.com/drive/folders/${GOOGLE_FOLDER_ANDROID:-})"
fi
if [[ -n "${WINDOWS_DOWNLOAD_LINK:-}" ]]; then
  WINDOWS_MESSAGE="[Download Windows Installer](${WINDOWS_DOWNLOAD_LINK})"
fi
if [[ -n "${LINUX_DOWNLOAD_LINK:-}" ]]; then
  LINUX_MESSAGE="[Download LINUX ZIP](${LINUX_DOWNLOAD_LINK})"
fi
if [[ -n "${IOS_DOWNLOAD_LINK:-}" ]]; then
  IOS_MESSAGE="[Download IOS IPA](${IOS_DOWNLOAD_LINK})"
fi
if [[ -n "${MACOS_DOWNLOAD_LINK:-}" ]]; then
  MACOS_MESSAGE="[Download macOS DMG](${MACOS_DOWNLOAD_LINK})"
fi

payload=$(jq -nc \
  --arg content "${APK_MESSAGE}
${WINDOWS_MESSAGE}
${LINUX_MESSAGE}
${IOS_MESSAGE}
${MACOS_MESSAGE}" \
  '{content: $content}')

curl -fsS -H "Content-Type: application/json" \
  -d "$payload" \
  "$DISCORD_WEBHOOK_URL"
