#!/usr/bin/env bash
set -euo pipefail

# Expects env: COMMIT_LOG, DISCORD_WEBHOOK_URL, PING_VARIABLE, GITHUB_REPOSITORY, VERSION (optional)

fetch_user_details() {
  local login=$1
  user_details=$(curl -s "https://api.github.com/users/$login")
  name=$(echo "$user_details" | jq -r '.name // .login')
  login=$(echo "$user_details" | jq -r '.login')
  avatar_url=$(echo "$user_details" | jq -r '.avatar_url')
  echo "$name|$login|$avatar_url"
}

declare -A additional_info
additional_info["ibo"]="\n Discord: <@951737931159187457>\n AniList: [takarealist112](<https://anilist.co/user/5790266/>)"
additional_info["aayush262"]="\n Discord: <@918825160654598224>\n AniList: [aayush262](<https://anilist.co/user/5144645/>)"
additional_info["Ankit Grai"]="\n Discord: <@1125628254330560623>\n AniList: [bheshnarayan](<https://anilist.co/user/6417303/>)\n X: [grayankit01](<https://x.com/grayankit01>)"

declare -A contributor_colors
default_color="#1ac4c5"
contributor_colors["aayush262"]="#ff7eb6"
contributor_colors["Sadwhy"]="#ff7e95"
contributor_colors["grayankit"]="#c51aa1"
contributor_colors["rebelonion"]="#d4e5ed"
hex_to_decimal() { printf '%d' "0x${1#"#"}"; }

declare -A recent_commit_counts
while read -r count name; do
  recent_commit_counts["$name"]=$count
done < <(echo "$COMMIT_LOG" | sed 's/%0A/\n/g' | grep -oP '(?<=~)[^[]*' | sort | uniq -c | sort -rn || true)

contributors=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/contributors")

sorted_contributors=$(for login in $(echo "$contributors" | jq -r '.[].login'); do
  user_info=$(fetch_user_details "$login")
  name=$(echo "$user_info" | cut -d'|' -f1)
  count=${recent_commit_counts["$name"]:-0}
  echo "$count|$login"
done | sort -rn | cut -d'|' -f2)

developers=""
max_commits=0
top_contributor_count=0
top_contributor_avatar=""
embed_color=$(hex_to_decimal "$default_color")

while read -r login; do
  [[ -z "$login" ]] && continue
  user_info=$(fetch_user_details "$login")
  name=$(echo "$user_info" | cut -d'|' -f1)
  login=$(echo "$user_info" | cut -d'|' -f2)
  avatar_url=$(echo "$user_info" | cut -d'|' -f3)

  commit_count=${recent_commit_counts["$name"]:-0}
  if [ "$commit_count" -gt 0 ]; then
    if [ "$commit_count" -gt "$max_commits" ]; then
      max_commits=$commit_count
      top_contributor_count=1
      top_contributor_avatar="$avatar_url"
      embed_color=$(hex_to_decimal "${contributor_colors[$name]:-$default_color}")
    elif [ "$commit_count" -eq "$max_commits" ]; then
      top_contributor_count=$((top_contributor_count + 1))
      embed_color=$(hex_to_decimal "$default_color")
    fi

    branch_commit_count=$(git log --author="$login" --author="$name" --oneline | awk '!seen[$0]++' | wc -l)
    extra_info="${additional_info[$name]:-}"
    if [ -n "$extra_info" ]; then
      extra_info=$(echo "$extra_info" | sed 's/\\n/\n- /g')
    fi

    developer_entry="◗ **${name}** ${extra_info}
- Github: [${login}](https://github.com/${login})
- Commits: ${branch_commit_count}"

    if [ -n "$developers" ]; then
      developers="${developers}
${developer_entry}"
    else
      developers="${developer_entry}"
    fi
  fi
done <<< "$sorted_contributors"

if [ "$top_contributor_count" -eq 1 ]; then
  thumbnail_url="$top_contributor_avatar"
else
  thumbnail_url="https://i.imgur.com/qt1ixRk.gif"
  embed_color=$(hex_to_decimal "$default_color")
fi

max_length=1000
commit_messages=$(echo "$COMMIT_LOG" | sed 's/%0A/\n/g; s/^/\n/')
if [ ${#developers} -gt $max_length ]; then
  developers="${developers:0:$max_length}... (truncated)"
fi
if [ ${#commit_messages} -gt $max_length ]; then
  commit_messages="${commit_messages:0:$max_length}... (truncated)"
fi

ping_content="${PING_VARIABLE:-noPing}"
discord_data=$(jq -nc \
  --arg content "$ping_content" \
  --arg field_value "$commit_messages" \
  --arg author_value "$developers" \
  --arg footer_text "Version ${VERSION:-}" \
  --arg timestamp "$(date -u +%Y-%m-%dT%H:%M:%S.000Z)" \
  --arg thumbnail_url "$thumbnail_url" \
  --arg embed_color "$embed_color" \
  '{
    "content": $content,
    "embeds": [{
      "title": "New Alpha-Build dropped 🔥",
      "color": ($embed_color | tonumber),
      "fields": [
        {"name": "Commits:", "value": $field_value, "inline": true},
        {"name": "Developers:", "value": $author_value, "inline": false}
      ],
      "footer": {"text": $footer_text},
      "timestamp": $timestamp,
      "thumbnail": {"url": $thumbnail_url}
    }],
    "attachments": []
  }')

curl -fsS -H "Content-Type: application/json" \
  -d "$discord_data" \
  "$DISCORD_WEBHOOK_URL"
