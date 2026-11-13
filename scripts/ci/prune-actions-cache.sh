#!/usr/bin/env bash
# Drop stale Actions caches so a save does not evict a live Gradle or SDK entry.
# Android runs on Linux, so flutter-linux-stable-* is the Android Flutter SDK
# cache and must be kept. The Linux job itself does not write that cache.
set -euo pipefail

repo="${GITHUB_REPOSITORY:?}"
keep_version="${FLUTTER_VERSION:-3.50.0}"

caches=$(gh api "/repos/${repo}/actions/caches?per_page=100")
count=$(echo "$caches" | jq '.actions_caches | length')
echo "Found ${count} cache entries"

delete_id() {
  local id="$1" key="$2"
  echo "Deleting ${key} (${id})"
  gh api --method DELETE "/repos/${repo}/actions/caches/${id}" >/dev/null
}

rows() {
  echo "$caches" | jq -r --arg version "$keep_version" '
    def stale:
      (.key | startswith("v1-Linux-gradle-"))
      or (.key | startswith("clean-v1-"))
      or (.key | startswith("v1-Linux-android-ndk-"))
      or (.key | startswith("v1-pub-Linux-"))
      or ((.key | test("^flutter-(windows|macos|linux)-stable-")) and (.key | contains($version) | not))
      or ((.key | test("^flutter-pub-(windows|macos|linux)-")) and (.key | contains($version) | not));
    .actions_caches[] | select(stale) | "\(.id)\t\(.key)"
  '
}

extras() {
  local prefix="$1"
  echo "$caches" | jq -r --arg prefix "$prefix" '
    [ .actions_caches[] | select(.key | startswith($prefix)) ]
    | sort_by(.last_accessed_at) | reverse
    | .[1:][] | "\(.id)\t\(.key)"
  '
}

while IFS=$'\t' read -r id key; do
  [ -z "${id:-}" ] && continue
  delete_id "$id" "$key"
done < <(rows)

for prefix in \
  "flutter-windows-stable-${keep_version}" \
  "flutter-macos-stable-${keep_version}" \
  "flutter-linux-stable-${keep_version}" \
  "flutter-pub-windows-stable-${keep_version}" \
  "flutter-pub-macos-stable-${keep_version}" \
  "flutter-pub-linux-stable-${keep_version}" \
  "v2-Linux-gradle-" \
  "v1-Linux-rustup-stable" \
  "v1-Linux-rhttp-target-"
do
  while IFS=$'\t' read -r id key; do
    [ -z "${id:-}" ] && continue
    delete_id "$id" "$key"
  done < <(extras "$prefix")
done

echo "Cache prune done"
