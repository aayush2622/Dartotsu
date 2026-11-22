#!/usr/bin/env bash
set -euo pipefail

# Expects: DISCORD_WEBHOOK_URL,
# APK_ARM64_DOWNLOAD_LINK, APK_ARMV7_DOWNLOAD_LINK, APK_X86_64_DOWNLOAD_LINK,
# APK_UNIVERSAL_DOWNLOAD_LINK, APK_DOWNLOAD_LINK,
# WINDOWS_DOWNLOAD_LINK, LINUX_DOWNLOAD_LINK, IOS_DOWNLOAD_LINK, MACOS_DOWNLOAD_LINK

APK_ARM64_MESSAGE=""
APK_ARMV7_MESSAGE=""
APK_X86_64_MESSAGE=""
APK_UNIVERSAL_MESSAGE=""
APK_MESSAGE=""
WINDOWS_MESSAGE=""
LINUX_MESSAGE=""
IOS_MESSAGE=""
MACOS_MESSAGE=""

if [[ -n "${APK_ARM64_DOWNLOAD_LINK:-}" ]]; then
  APK_ARM64_MESSAGE="[Download APK (arm64-v8a)](${APK_ARM64_DOWNLOAD_LINK})"
fi
if [[ -n "${APK_ARMV7_DOWNLOAD_LINK:-}" ]]; then
  APK_ARMV7_MESSAGE="[Download APK (armeabi-v7a)](${APK_ARMV7_DOWNLOAD_LINK})"
fi
if [[ -n "${APK_X86_64_DOWNLOAD_LINK:-}" ]]; then
  APK_X86_64_MESSAGE="[Download APK (x86_64)](${APK_X86_64_DOWNLOAD_LINK})"
fi
if [[ -n "${APK_UNIVERSAL_DOWNLOAD_LINK:-}" ]]; then
  APK_UNIVERSAL_MESSAGE="[Download APK (Universal)](${APK_UNIVERSAL_DOWNLOAD_LINK})"
fi

# Fallback for single APK link if specific ABI links were not set
if [[ -z "${APK_ARM64_MESSAGE:-}" && -z "${APK_UNIVERSAL_MESSAGE:-}" && -n "${APK_DOWNLOAD_LINK:-}" ]]; then
  APK_MESSAGE="[Download APK](${APK_DOWNLOAD_LINK})"
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

lines=()
[[ -n "${APK_ARM64_MESSAGE:-}" ]] && lines+=("$APK_ARM64_MESSAGE")
[[ -n "${APK_ARMV7_MESSAGE:-}" ]] && lines+=("$APK_ARMV7_MESSAGE")
[[ -n "${APK_X86_64_MESSAGE:-}" ]] && lines+=("$APK_X86_64_MESSAGE")
[[ -n "${APK_UNIVERSAL_MESSAGE:-}" ]] && lines+=("$APK_UNIVERSAL_MESSAGE")
[[ -n "${APK_MESSAGE:-}" ]] && lines+=("$APK_MESSAGE")
[[ -n "${WINDOWS_MESSAGE:-}" ]] && lines+=("$WINDOWS_MESSAGE")
[[ -n "${LINUX_MESSAGE:-}" ]] && lines+=("$LINUX_MESSAGE")
[[ -n "${IOS_MESSAGE:-}" ]] && lines+=("$IOS_MESSAGE")
[[ -n "${MACOS_MESSAGE:-}" ]] && lines+=("$MACOS_MESSAGE")

if [[ ${#lines[@]} -eq 0 ]]; then
  echo "No download links to send."
  exit 0
fi

content=$(IFS=$'\n'; echo "${lines[*]}")

payload=$(jq -nc \
  --arg content "$content" \
  '{content: $content}')

curl -fsS -H "Content-Type: application/json" \
  -d "$payload" \
  "$DISCORD_WEBHOOK_URL"
