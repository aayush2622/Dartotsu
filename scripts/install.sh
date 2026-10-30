#!/bin/bash
set -e

# =============================================================================
# 🎯 DARTOTSU INSTALLER - Beautiful Terminal Experience
# =============================================================================

# Define application details
OWNER='aayush2622'
REPO='Dartotsu'
APP_NAME='Dartotsu'

# Installation paths
INSTALL_DIR="$HOME/.local/share/$APP_NAME"
LINK="$HOME/.local/bin/$APP_NAME"
DESKTOP_FILE="$HOME/.local/share/applications/$APP_NAME.desktop"
ICON_FILE="$HOME/.local/share/icons/$APP_NAME.png"

# =============================================================================
# 🎨 COLORS & STYLING
# =============================================================================

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
GRAY='\033[0;90m'
BOLD='\033[1m'
DIM='\033[2m'
RESET='\033[0m'

# Dartotsu gradient colors (teal to cyan)
GRAD1='\033[38;5;30m'   # Dark teal
GRAD2='\033[38;5;36m'   # Medium teal
GRAD3='\033[38;5;42m'   # Teal
GRAD4='\033[38;5;48m'   # Light teal
GRAD5='\033[38;5;51m'   # Cyan
GRAD6='\033[38;5;87m'   # Bright cyan

# Icons
ICON_FIRE="🔥"
ICON_LIGHTNING="⚡"
ICON_STAR="⭐"
ICON_DIAMOND="💎"
ICON_BOMB="💣"
ICON_SKULL="💀"
ICON_ROBOT="🤖"
ICON_ALIEN="👽"
ICON_GHOST="👻"
ICON_MAGIC="🪄"
ICON_CRYSTAL="🔮"
ICON_SWORD="⚔️"
ICON_SHIELD="🛡️"
ICON_CROWN="👑"
ICON_COMET="☄️"
ICON_GALAXY="🌌"
ICON_SUCCESS="✅"
ICON_ERROR="❌"
ICON_INFO="ℹ️"
ICON_WARNING="⚠️"
ICON_DOWNLOAD="📥"
ICON_UPDATE="🔄"
ICON_UNINSTALL="🗑️"
ICON_SPARKLES="✨"
ICON_INSTALL="📦"
ICON_ROCKET="🚀"

CHANNEL_FILE="$INSTALL_DIR/.channel"

# =============================================================================
# 🎭 ANIMATION & UI FUNCTIONS
# =============================================================================

# Spinner animation
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏'
    while kill -0 "$pid" 2>/dev/null; do
        local temp=${spinstr#?}
        printf " [${CYAN}%c${RESET}]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# Progress bar
progress_bar() {
    local current=$1
    local total=$2
    local width=50
    local percentage=$((current * 100 / total))
    local filled=$((current * width / total))
    local empty=$((width - filled))

    # Color gradient based on progress
    local color=""
    if [ $percentage -lt 25 ]; then
        color="${RED}"
    elif [ $percentage -lt 50 ]; then
        color="${YELLOW}"
    elif [ $percentage -lt 75 ]; then
        color="${CYAN}"
    else
        color="${GREEN}"
    fi

    printf "\r${BOLD}${ICON_LIGHTNING} Progress: ${RESET}["
    printf "${color}%*s${RESET}" $filled | tr ' ' '█'
    printf "${GRAY}%*s${RESET}" $empty | tr ' ' '░'
    printf "] ${BOLD}${color}%d%%${RESET} ${ICON_FIRE}" $percentage
}

# GNU date only; a bad stamp must not abort the install under set -e.
format_utc() {
    local raw="$1"
    local formatted=""
    formatted=$(date -d "$raw" '+%Y-%m-%d %H:%M:%S UTC' 2>/dev/null) || formatted="${raw:-unknown}"
    printf '%s' "$formatted"
}

# Compare commit SHAs between repos
compare_commits() {
    local main_repo="aayush2622/Dartotsu"
    local alpha_repo="grayankit/Dartotsu-Downloader"

    echo
    echo -ne "${CYAN}${ICON_ROBOT}${RESET} ${BOLD}Initiating quantum commit analysis${RESET}"
    for i in {1..5}; do
        sleep 0.3
        echo -ne "${CYAN}.${RESET}"
    done
    echo -e " ${GREEN}${ICON_LIGHTNING}${RESET}"

    # Matrix-style loading
    echo -e "${GREEN}${DIM}> Accessing GitHub API...${RESET}"
    sleep 0.5
    echo -e "${GREEN}${DIM}> Scanning commit trees...${RESET}"
    sleep 0.5
    echo -e "${GREEN}${DIM}> Cross-referencing SHA hashes...${RESET}"
    sleep 0.5

    local response="" main_commit="" main_date="" main_author=""
    local alpha_release="" alpha_tag="" alpha_date=""
    response=$(curl -fsSL "https://api.github.com/repos/${main_repo}/commits?per_page=1" 2>/dev/null) || response=""
    main_commit=$(echo "$response" | grep -m1 '"sha"' | cut -d'"' -f4 | cut -c1-7)
    main_date=$(echo "$response" | grep -m1 '"date"' | sed -E 's/.*"([^"]*)".*/\1/')
    main_author=$(echo "$response" | grep -m1 '"name"' | cut -d'"' -f4)

    alpha_release=$(curl -fsSL "https://api.github.com/repos/${alpha_repo}/releases/latest" 2>/dev/null) || alpha_release=""
    alpha_tag=$(echo "$alpha_release" | grep -m1 '"tag_name"' | cut -d'"' -f4)
    alpha_date=$(echo "$alpha_release" | grep -m1 '"published_at"' | sed -E 's/.*"([^"]*)".*/\1/')

    echo
    echo -e "${BOLD}${PURPLE}╔═══════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}                    ${ICON_CRYSTAL} COMMIT MATRIX ${ICON_CRYSTAL}                    ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}╠═══════════════════════════════════════════════════════════════╣${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}                                                         ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET} ${ICON_GALAXY} ${BOLD}MAIN REPOSITORY${RESET} ${GRAY}(${main_repo})${RESET}          ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_DIAMOND} Commit SHA: ${YELLOW}${BOLD}${main_commit}${RESET}                           ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_STAR} Author: ${CYAN}${main_author}${RESET}                              ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_COMET} Timestamp: ${GRAY}$(format_utc "$main_date")${RESET}  ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}                                                         ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET} ${ICON_ALIEN} ${BOLD}ALPHA REPOSITORY${RESET} ${GRAY}(${alpha_repo})${RESET} ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_BOMB} Release Tag: ${PURPLE}${BOLD}${alpha_tag}${RESET}                            ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_GHOST} Published: ${GRAY}$(format_utc "$alpha_date")${RESET}    ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}║${RESET}                                                         ${PURPLE}${BOLD}║${RESET}"

    # Sync status with epic effects
    if [[ "$alpha_tag" == *"$main_commit"* ]]; then
        echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_MAGIC} SYNC STATUS: ${GREEN}${BOLD}${ICON_FIRE} PERFECTLY SYNCHRONIZED ${ICON_FIRE}${RESET}   ${PURPLE}${BOLD}║${RESET}"
        echo -e "${BOLD}${PURPLE}║${RESET}   ${GREEN}${ICON_LIGHTNING} Repositories are in perfect harmony! ${ICON_LIGHTNING}${RESET}           ${PURPLE}${BOLD}║${RESET}"
    else
        echo -e "${BOLD}${PURPLE}║${RESET}   ${ICON_CRYSTAL} SYNC STATUS: ${YELLOW}${BOLD}${ICON_SWORD} DIVERGED TIMELINES ${ICON_SWORD}${RESET}     ${PURPLE}${BOLD}║${RESET}"
        echo -e "${BOLD}${PURPLE}║${RESET}   ${YELLOW}${ICON_SKULL} Alpha may contain different features ${ICON_SKULL}${RESET}            ${PURPLE}${BOLD}║${RESET}"
    fi

    echo -e "${BOLD}${PURPLE}║${RESET}                                                         ${PURPLE}${BOLD}║${RESET}"
    echo -e "${BOLD}${PURPLE}╚═══════════════════════════════════════════════════════════════╝${RESET}"
    echo

    # Cool countdown
    echo -ne "${BOLD}${CYAN}Preparing alpha download in: ${RESET}"
    for i in 3 2 1; do
        echo -ne "${RED}${BOLD}$i${RESET}"
        sleep 0.8
        echo -ne "\b \b"
    done
    echo -e "${GREEN}${BOLD}GO! ${ICON_ROCKET}${RESET}"
    echo
}

# Animated text typing effect
type_text() {
    local text="$1"
    local delay=${2:-0.03}
    for ((i=0; i<${#text}; i++)); do
        printf "${text:$i:1}"
        sleep $delay
    done
    echo
}

# Cool banner
show_banner() {
    clear
    echo
    # Animated border effect
    for i in {1..3}; do
        echo -e "${GRAD1}════════════════════════════════════════════════════════════════════════${RESET}"
        sleep 0.05
        printf "\033[1A\033[K"
    done

    echo -e "${GRAD1}  ██████╗  █████╗ ██████╗ ████████╗ ██████╗ ████████╗███████╗██╗   ██╗${RESET}"
    echo -e "${GRAD2}  ██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔═══██╗╚══██╔══╝██╔════╝██║   ██║${RESET}"
    echo -e "${GRAD3}  ██║  ██║███████║██████╔╝   ██║   ██║   ██║   ██║   ███████╗██║   ██║${RESET}"
    echo -e "${GRAD4}  ██║  ██║██╔══██║██╔══██╗   ██║   ██║   ██║   ██║   ╚════██║██║   ██║${RESET}"
    echo -e "${GRAD5}  ██████╔╝██║  ██║██║  ██║   ██║   ╚██████╔╝   ██║   ███████║╚██████╔╝${RESET}"
    echo -e "${GRAD6}  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝    ╚═╝   ╚══════╝ ╚═════╝ ${RESET}"
    echo
    echo -e "${CYAN}${BOLD}                 ${ICON_FIRE}${ICON_LIGHTNING} The Ultimate Anime & Manga Experience ${ICON_LIGHTNING}${ICON_FIRE}${RESET}"
    echo -e "${GRAY}                    ═══════════════════════════════════════${RESET}"
    echo -e "${PURPLE}${DIM}                           ${ICON_GALAXY} Powered by Dreams ${ICON_GALAXY}${RESET}"
    echo
}

# Stylized section headers
section_header() {
    local title="$1"
    local icon="$2"
    echo
    echo -e "${BOLD}${BLUE}╭─────────────────────────────────────────────────────╮${RESET}"
    echo -e "${BOLD}${BLUE}│${RESET} ${icon} ${BOLD}${WHITE}${title}${RESET} ${BLUE}│${RESET}"
    echo -e "${BOLD}${BLUE}╰─────────────────────────────────────────────────────╯${RESET}"
    echo
}

# Success message with animation
success_msg() {
    local msg="$1"
    echo
    echo -e "${GREEN}${BOLD}┌─ SUCCESS! ─────────────────────────────────────────┐${RESET}"
    echo -e "${GREEN}${BOLD}│${RESET} ${ICON_SUCCESS} ${msg} ${GREEN}${BOLD}│${RESET}"
    echo -e "${GREEN}${BOLD}└────────────────────────────────────────────────────┘${RESET}"
    echo
}

# Error message
error_msg() {
    local msg="$1"
    echo
    echo -e "${RED}${BOLD}┌─ ERROR! ───────────────────────────────────────────┐${RESET}"
    echo -e "${RED}${BOLD}│${RESET} ${ICON_ERROR} ${msg} ${RED}${BOLD}│${RESET}"
    echo -e "${RED}${BOLD}└────────────────────────────────────────────────────┘${RESET}"
    echo
}

# Info message
info_msg() {
    local msg="$1"
    echo -e "${CYAN}${ICON_INFO}${RESET} ${msg}"
}

# Warning message
warn_msg() {
    local msg="$1"
    echo -e "${YELLOW}${ICON_WARNING}${RESET} ${msg}"
}

# Stylized menu
show_menu() {
    # Glitch effect
    echo -e "${GRAD1}█${GRAD2}█${GRAD3}█${GRAD4}█${GRAD5}█${GRAD6}█${RESET} ${BOLD}DARTOTSU CONTROL PANEL${RESET} ${GRAD6}█${GRAD5}█${GRAD4}█${GRAD3}█${GRAD2}█${GRAD1}█${RESET}"
    echo
    echo -e "${BOLD}${CYAN}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}                                                     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${ICON_ROBOT} ${GREEN}${BOLD}[I]${RESET} ${ICON_DOWNLOAD} Install Dartotsu ${GRAY}(Get Started)${RESET}      ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}      ${GREEN}Deploy the ultimate anime experience${RESET}        ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}                                                     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${ICON_LIGHTNING} ${YELLOW}${BOLD}[U]${RESET} ${ICON_UPDATE} Update Dartotsu ${GRAY}(Stay Current)${RESET}     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}      ${YELLOW}Upgrade to the latest and greatest${RESET}         ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}                                                     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${ICON_BOMB} ${RED}${BOLD}[R]${RESET} ${ICON_UNINSTALL} Remove Dartotsu ${GRAY}(Nuclear Option)${RESET}   ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}      ${RED}Complete annihilation of installation${RESET}       ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}                                                     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}  ${ICON_GHOST} ${CYAN}${BOLD}[Q]${RESET} ${ICON_SPARKLES} Quit ${GRAY}(Escape the Matrix)${RESET}            ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}      ${CYAN}Return to the real world${RESET}                   ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}║${RESET}                                                     ${CYAN}${BOLD}║${RESET}"
    echo -e "${BOLD}${CYAN}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${BOLD}${WHITE}Enter the matrix${RESET} ${GRAY}(I/U/R/Q)${RESET} ${ICON_MAGIC}: "
}

# Version selection menu
version_menu() {
    echo
    # Animated title
    for char in "V" "E" "R" "S" "I" "O" "N" " " "S" "E" "L" "E" "C" "T" "I" "O" "N"; do
        echo -ne "${BOLD}${PURPLE}$char${RESET}"
        sleep 0.05
    done
    echo
    echo

    echo -e "${BOLD}${GRAD2}╔═══════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}                                                     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}  ${ICON_CROWN} ${GREEN}${BOLD}[S]${RESET} Stable Release ${GRAY}(Battle-Tested)${RESET}         ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}      ${ICON_SHIELD} Rock solid, enterprise ready            ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}                                                     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}  ${ICON_LIGHTNING} ${YELLOW}${BOLD}[P]${RESET} Pre-release ${GRAY}(Bleeding Edge)${RESET}          ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}      ${ICON_FIRE} Latest features, some bugs possible     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}                                                     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}  ${ICON_BOMB} ${PURPLE}${BOLD}[A]${RESET} Alpha Build ${GRAY}(Danger Zone!)${RESET}            ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}      ${ICON_SKULL} Experimental, use at your own risk     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}║${RESET}                                                     ${GRAD2}${BOLD}║${RESET}"
    echo -e "${BOLD}${GRAD2}╚═══════════════════════════════════════════════════════╝${RESET}"
    echo
    echo -ne "${BOLD}${WHITE}Choose your destiny${RESET} ${GRAY}(S/P/A)${RESET} ${ICON_MAGIC}: "
}

# =============================================================================
# 🐚 SHELL ALIAS MANAGEMENT
# =============================================================================

detect_shell_rc() {
  local shell_name
  shell_name=$(basename "$SHELL")
  case "$shell_name" in
    bash) echo "$HOME/.bashrc" ;;
    zsh) echo "$HOME/.zshrc" ;;
    fish) echo "$HOME/.config/fish/config.fish" ;;
    *) echo "$HOME/.profile" ;;
  esac
}

add_updater_alias() {
  if [ ! -t 0 ]; then
    return 0
  fi

  local shell_rc shell_name alias_line
  shell_name=$(basename "$SHELL")
  shell_rc=$(detect_shell_rc)
  if [ "$shell_name" = "fish" ]; then
    alias_line="function dartotsu-updater; bash -c 'tmp=\$(mktemp); curl -fsSL https://raw.githubusercontent.com/aayush2622/Dartotsu/main/scripts/install.sh -o \$tmp && bash \$tmp update; status=\$?; rm -f \$tmp; exit \$status'; end"
  else
    alias_line="alias dartotsu-updater='bash <(curl -fsSL https://raw.githubusercontent.com/aayush2622/Dartotsu/main/scripts/install.sh) update'"
  fi

  if grep -Fxq "$alias_line" "$shell_rc" 2>/dev/null; then
    echo -ne "${YELLOW}${ICON_WARNING}${RESET} The 'dartotsu-updater' alias already exists in your shell config file ($(basename "$shell_rc")). Would you like to remove it? [y/N]: "
    read -r remove_response
    case "$remove_response" in
      [yY][eE][sS]|[yY])
        sed -i "\|$alias_line|d" "$shell_rc"
        echo -e " ${GREEN}${ICON_SUCCESS} Alias removed from $(basename "$shell_rc")${RESET}"
        ;;
      *)
        echo -e " ${CYAN}${ICON_INFO} Keeping existing alias.${RESET}"
        ;;
    esac
  else
    echo -ne "${CYAN}${ICON_MAGIC}${RESET} Would you like to add the 'dartotsu-updater' alias to your shell config file ($(basename "$shell_rc"))? [y/N]: "
    read -r add_response
    case "$add_response" in
      [yY][eE][sS]|[yY])
        mkdir -p "$(dirname "$shell_rc")"
        echo "$alias_line" >> "$shell_rc"
        echo -e " ${GREEN}${ICON_SUCCESS} Alias added to $(basename "$shell_rc")${RESET}"
        info_msg "You can now run '${BOLD}dartotsu-updater${RESET}' to update anytime!"
        info_msg "Run '${BOLD}source $shell_rc${RESET}' or restart your terminal to activate the alias"
        ;;
      *)
        echo -e " ${YELLOW}${ICON_WARNING} Skipped adding alias${RESET}"
        ;;
    esac
  fi
}




# =============================================================================
# ❄️  NIX / NIXOS DETECTION
# =============================================================================

is_nix_environment() {
    [ -d /nix/store ] || command -v nix >/dev/null 2>&1
}

nix_environment_notice() {
    echo
    echo -e "${BOLD}${CYAN}╭─────────────────────────────────────────────────────────────────╮${RESET}"
    echo -e "${BOLD}${CYAN}│${RESET} ${ICON_MAGIC} ${BOLD}${WHITE}Nix / NixOS detected${RESET}                                       ${CYAN}${BOLD}│${RESET}"
    echo -e "${BOLD}${CYAN}╰─────────────────────────────────────────────────────────────────╯${RESET}"
    echo
    warn_msg "This script can't install $APP_NAME here: it downloads a plain"
    warn_msg "glibc binary and reaches for apt/dnf/pacman/zypper, and none of"
    warn_msg "that works against the Nix store."
    echo
    info_msg "Use the flake instead -- it packages the same releases properly:"
    echo
    echo -e "  ${BOLD}${GREEN}nix run github:aayush2622/Dartotsu/rewrite-re#stable${RESET}"
    echo -e "  ${BOLD}${GREEN}nix profile install github:aayush2622/Dartotsu/rewrite-re#stable${RESET}"
    echo
    info_msg "Swap ${BOLD}#stable${RESET} for ${BOLD}#prerelease${RESET} or ${BOLD}#alpha${RESET} for the other channels."
    info_msg "Already have it as a flake input? ${BOLD}nix flake update dartotsu${RESET} and rebuild to update."
    echo
}

nix_update_check() {
    local exe="" channel="" pname=""
    for candidate in dartotsu dartotsu-prerelease dartotsu-alpha; do
        if command -v "$candidate" >/dev/null 2>&1; then
            exe="$candidate"
            case "$candidate" in
                dartotsu) channel="stable"; pname="dartotsu" ;;
                dartotsu-prerelease) channel="prerelease"; pname="dartotsu-prerelease" ;;
                dartotsu-alpha) channel="alpha"; pname="dartotsu-alpha" ;;
            esac
            break
        fi
    done

    if [ -z "$exe" ]; then
        nix_environment_notice
        return
    fi

    local bin_path store_path derivation_dir derivation_name installed_version
    bin_path="$(command -v "$exe")"
    store_path="$(readlink -f "$bin_path" 2>/dev/null)"
    case "$store_path" in
        /nix/store/*) ;;
        *)
            warn_msg "Found '$exe' on PATH but couldn't resolve it to a Nix store path."
            return
            ;;
    esac

    derivation_dir="$(echo "$store_path" | sed -E 's#(/nix/store/[^/]+)/.*#\1#')"
    derivation_name="$(basename "$derivation_dir")"
    installed_version="$(echo "$derivation_name" | sed -E "s/^[0-9a-z]{32}-${pname}-//")"

    if [ -z "$installed_version" ] || [ "$installed_version" = "$derivation_name" ]; then
        warn_msg "Couldn't parse an installed version out of: $derivation_name"
        return
    fi

    info_msg "Installed via Nix: ${BOLD}$exe${RESET} ${GRAY}($channel channel)${RESET} -- version ${BOLD}$installed_version${RESET}"

    local remote_version
    remote_version="$(curl -fsSL "https://raw.githubusercontent.com/aayush2622/Dartotsu/rewrite-re/channels.json" 2>/dev/null \
        | grep -A3 "\"$channel\":" \
        | grep '"version"' \
        | head -n1 \
        | sed -E 's/.*"version"[[:space:]]*:[[:space:]]*"([^"]*)".*/\1/')"

    if [ -z "$remote_version" ]; then
        warn_msg "Couldn't fetch the latest $channel version to compare against."
        return
    fi

    if [ "$installed_version" = "$remote_version" ]; then
        success_msg "You're already on the latest $channel version ($installed_version)."
        return
    fi

    echo
    warn_msg "Update available: ${installed_version} -> ${remote_version}"
    echo

    if nix profile list 2>/dev/null | grep -q "dartotsu"; then
        echo -ne "${YELLOW}${BOLD}Run 'nix profile upgrade' now?${RESET} ${GRAY}(y/N)${RESET}: "
        read -rn 1 RUN_UPGRADE
        echo
        if [[ "${RUN_UPGRADE,,}" == "y" ]]; then
            if nix profile upgrade '.*dartotsu.*'; then
                success_msg "Updated to $remote_version!"
            else
                warn_msg "Automatic upgrade failed -- run this yourself:"
                echo -e "  ${BOLD}${GREEN}nix profile upgrade '.*dartotsu.*'${RESET}"
            fi
        else
            info_msg "Skipped. Run this whenever you're ready:"
            echo -e "  ${BOLD}${GREEN}nix profile upgrade '.*dartotsu.*'${RESET}"
        fi
    else
        info_msg "This looks like a NixOS/home-manager managed install -- update it by rebuilding your system:"
        echo -e "  ${BOLD}${GREEN}nix flake update dartotsu${RESET}  ${GRAY}# in whichever flake declares it${RESET}"
        echo -e "  ${BOLD}${GREEN}sudo nixos-rebuild switch${RESET}  ${GRAY}# or: home-manager switch${RESET}"
    fi
}

# =============================================================================
# 🛠️ ENHANCED DEPENDENCY MANAGEMENT
# =============================================================================

# Check if running in container/CI
is_containerized() {
    [ -f /.dockerenv ] || [ -n "${CI:-}" ] || [ -n "${GITHUB_ACTIONS:-}" ]
}

# Enhanced dependency checking with better error handling
check_dependencies() {
    local missing_deps=()
    local optional_deps=()

    # Tools only. Shared libraries depend on which channel was unpacked, so
    # those are checked after extract in ensure_runtime_libs.
    command -v curl >/dev/null 2>&1 || missing_deps+=("curl")
    command -v unzip >/dev/null 2>&1 || missing_deps+=("unzip")
    command -v python3 >/dev/null 2>&1 || missing_deps+=("python3")

    command -v git >/dev/null 2>&1 || optional_deps+=("git")

    if [ ${#missing_deps[@]} -ne 0 ]; then
        warn_msg "Missing required dependencies: ${missing_deps[*]}"

        if [ ${#optional_deps[@]} -ne 0 ]; then
            info_msg "Optional dependencies not found: ${optional_deps[*]}"
        fi

        echo
        if is_containerized; then
            info_msg "Container environment detected - attempting automatic installation..."
            export DEBIAN_FRONTEND=noninteractive
            install_packages "${missing_deps[@]}"
        else
            echo -e "${YELLOW}${BOLD}Would you like to install required dependencies automatically?${RESET} ${GRAY}(y/N)${RESET}: "
            read -rn 1 INSTALL_DEPS
            echo

            if [[ "${INSTALL_DEPS,,}" == "y" ]]; then
                install_packages "${missing_deps[@]}"
            else
                error_exit "Required dependencies must be installed to continue: ${missing_deps[*]}"
            fi
        fi
    elif [ ${#optional_deps[@]} -ne 0 ]; then
        info_msg "Optional dependencies not found: ${optional_deps[*]}"
        echo -e "${GRAY}These are not required but may provide additional functionality.${RESET}"
    else
        info_msg "Required tools are available."
    fi
}

# Logical names (webkit2gtk, gtk3, ...) to distro packages. Runtime packages,
# not -dev, and exact matches so "webkit2gtk" cannot rewrite "libwebkit2gtk-...".
map_package() {
    local distro="$1"
    local dep="$2"
    case "$distro:$dep" in
        debian:webkit2gtk) echo libwebkit2gtk-4.1-0 ;;
        debian:gtk3) echo libgtk-3-0 ;;
        debian:pkg-config) echo pkg-config ;;
        debian:libsecret) echo libsecret-1-0 ;;
        debian:libwpe) echo libwpe-1.0-1 ;;
        debian:wpewebkit) echo libwpewebkit-2.0-1 ;;
        debian:libsoup3) echo libsoup-3.0-0 ;;
        debian:mpv) echo libmpv2 ;;
        debian:glib-networking) echo glib-networking ;;
        fedora:webkit2gtk) echo webkit2gtk4.1 ;;
        fedora:gtk3) echo gtk3 ;;
        fedora:pkg-config) echo pkgconf-devel ;;
        fedora:libsecret) echo libsecret ;;
        fedora:libwpe) echo libwpe ;;
        fedora:wpewebkit) echo wpewebkit ;;
        fedora:libsoup3) echo libsoup3 ;;
        fedora:mpv) echo mpv-libs ;;
        fedora:glib-networking) echo glib-networking ;;
        arch:webkit2gtk) echo webkit2gtk-4.1 ;;
        arch:gtk3) echo gtk3 ;;
        arch:pkg-config) echo pkgconf ;;
        arch:libsecret) echo libsecret ;;
        arch:libwpe) echo libwpe ;;
        arch:wpewebkit) echo wpewebkit ;;
        arch:libsoup3) echo libsoup3 ;;
        arch:mpv) echo mpv ;;
        arch:glib-networking) echo glib-networking ;;
        opensuse:webkit2gtk) echo libwebkit2gtk-4_1-0 ;;
        opensuse:gtk3) echo gtk3 ;;
        opensuse:pkg-config) echo pkg-config ;;
        opensuse:libsecret) echo libsecret-1-0 ;;
        opensuse:libwpe) echo libwpe1 ;;
        opensuse:wpewebkit) echo libwpewebkit-2_0-1 ;;
        opensuse:libsoup3) echo libsoup-3_0-0 ;;
        opensuse:mpv) echo libmpv2 ;;
        opensuse:glib-networking) echo glib-networking ;;
        macos:webkit2gtk) echo "" ;;
        macos:gtk3) echo gtk+3 ;;
        macos:pkg-config) echo pkg-config ;;
        macos:mpv) echo mpv ;;
        *) echo "$dep" ;;
    esac
}

# Enhanced package installation with better error recovery.
# --soft returns 1 instead of exiting, so a caller can fall back.
install_packages() {
    local soft=0
    if [ "${1:-}" = "--soft" ]; then
        soft=1
        shift
    fi
    local deps=("$@")
    local install_cmd=""
    local update_cmd=""
    local distro=""

    # Detect distribution and package manager
    if command -v apt >/dev/null 2>&1; then
        distro="debian"
        update_cmd="sudo apt update -y"
        install_cmd="sudo apt install -y"
    elif command -v dnf >/dev/null 2>&1; then
        distro="fedora"
        install_cmd="sudo dnf install -y"
    elif command -v pacman >/dev/null 2>&1; then
        distro="arch"
        update_cmd="sudo pacman -Sy"
        install_cmd="sudo pacman -S --noconfirm"
    elif command -v zypper >/dev/null 2>&1; then
        distro="opensuse"
        install_cmd="sudo zypper install -y"
    elif command -v brew >/dev/null 2>&1; then
        distro="macos"
        install_cmd="brew install"
    else
        if [ "$soft" -eq 1 ]; then
            warn_msg "No supported package manager found. Install manually: ${deps[*]}"
            return 1
        fi
        error_exit "No supported package manager found! Please install manually: ${deps[*]}"
    fi

    local mapped=()
    local dep mapped_dep
    for dep in "${deps[@]}"; do
        mapped_dep=$(map_package "$distro" "$dep")
        mapped+=("$mapped_dep")
    done
    deps=("${mapped[@]}")

    # Filter out empty elements and duplicates (webkit + javascriptcore share a package).
    local filtered_deps=()
    local seen=" "
    for dep in "${deps[@]}"; do
        [[ -z "$dep" ]] && continue
        case "$seen" in
            *" $dep "*) ;;
            *)
                filtered_deps+=("$dep")
                seen+="$dep "
                ;;
        esac
    done
    deps=("${filtered_deps[@]}")

    if [ ${#deps[@]} -eq 0 ]; then
        info_msg "No packages to install for this system."
        return 0
    fi

    info_msg "Detected system: $distro"
    info_msg "Installing packages: ${deps[*]}"

    # Update package lists if needed
    if [ -n "$update_cmd" ]; then
        echo -ne "${CYAN}${ICON_INSTALL}${RESET} Updating package lists..."
        if eval "$update_cmd" >/dev/null 2>&1; then
            echo -e " ${GREEN}${ICON_SUCCESS}${RESET}"
        else
            echo -e " ${YELLOW}${ICON_WARNING} Update failed, continuing...${RESET}"
        fi
    fi

    # Install packages
    echo -ne "${CYAN}${ICON_INSTALL}${RESET} Installing dependencies..."

    if eval "$install_cmd ${deps[*]}" >/dev/null 2>&1; then
        echo -e " ${GREEN}${ICON_SUCCESS} Done!${RESET}"
        info_msg "Dependencies installed successfully!"
    else
        echo -e " ${RED}${ICON_ERROR} Failed!${RESET}"

        # Try installing packages individually to identify problematic ones
        warn_msg "Attempting to install packages individually..."
        local failed_packages=()

        for pkg in "${deps[@]}"; do
            echo -ne "  Installing $pkg..."
            if eval "$install_cmd $pkg" >/dev/null 2>&1; then
                echo -e " ${GREEN}${ICON_SUCCESS}${RESET}"
            else
                echo -e " ${RED}${ICON_ERROR}${RESET}"
                failed_packages+=("$pkg")
            fi
        done

        if [ ${#failed_packages[@]} -ne 0 ]; then
            if [ "$soft" -eq 1 ]; then
                warn_msg "Failed to install: ${failed_packages[*]}. Please install manually."
                return 1
            fi
            error_exit "Failed to install: ${failed_packages[*]}. Please install manually."
        fi
    fi
}

# Verify installation of critical dependencies
verify_installation() {
    local critical_deps=("curl" "unzip" "python3")
    local failed_deps=()

    for dep in "${critical_deps[@]}"; do
        if ! command -v "$dep" >/dev/null 2>&1; then
            failed_deps+=("$dep")
        fi
    done

    if [ ${#failed_deps[@]} -ne 0 ]; then
        error_exit "Critical dependencies still missing after installation: ${failed_deps[*]}"
    fi

    info_msg "Tool check completed."
}

# =============================================================================
# 🛠️  CORE FUNCTIONS
# =============================================================================

error_exit() {
    error_msg "$1"
    if [ -t 0 ]; then
        echo -e "${GRAY}${DIM}Press any key to exit...${RESET}"
        read -rn 1 || true
    fi
    exit 1
}

pause() {
    if [ -t 0 ]; then
        echo -e "${GRAY}${DIM}Press any key to continue...${RESET}"
        read -rn 1 || true
    fi
}

# stdin: GitHub release JSON (one release, or a list). Prints one Linux zip URL.
pick_linux_zip() {
    local mode="$1"
    python3 -c '
import json, sys
mode = sys.argv[1]
try:
    data = json.load(sys.stdin)
except json.JSONDecodeError as exc:
    print("Could not parse GitHub response: %s" % exc, file=sys.stderr)
    raise SystemExit(1)
if isinstance(data, dict) and "message" in data and "assets" not in data and "tag_name" not in data:
    print(data.get("message") or "GitHub API error", file=sys.stderr)
    raise SystemExit(1)
releases = data if isinstance(data, list) else [data]
if mode == "prerelease":
    releases = [r for r in releases if r.get("prerelease") and not r.get("draft")]
elif mode == "stable":
    releases = [r for r in releases if not r.get("prerelease") and not r.get("draft")]
else:
    releases = [r for r in releases if not r.get("draft")]
for rel in releases:
    for asset in rel.get("assets") or []:
        name = asset.get("name") or ""
        url = asset.get("browser_download_url") or ""
        if name.lower().endswith(".zip") and "linux" in name.lower():
            print(url)
            raise SystemExit(0)
print("no Linux zip in the selected release", file=sys.stderr)
raise SystemExit(1)
' "$mode"
}

pick_app_executable() {
    local root="$1"
    local found=""
    found=$(find "$root" -type f -name 'dartotsu' -perm -111 -print -quit)
    if [ -n "$found" ]; then
        printf '%s\n' "$found"
        return 0
    fi
    found=$(find "$root" -type f -name 'dartotsu.bin' -perm -111 -print -quit)
    if [ -n "$found" ]; then
        printf '%s\n' "$found"
        return 0
    fi
    found=$(find "$root" -type f -perm -111 ! -name '*.so' ! -name '*.so.*' -print -quit)
    if [ -n "$found" ]; then
        printf '%s\n' "$found"
        return 0
    fi
    return 1
}

# Exec the real path so a wrapper using dirname "$0" does not follow the symlink.
install_launcher() {
    local target="$1"
    mkdir -p "$(dirname "$LINK")"
    rm -f "$LINK"
    cat > "$LINK" <<EOF
#!/bin/sh
exec $(printf '%q' "$target") "\$@"
EOF
    chmod +x "$LINK"
}

system_has_lib() {
    local soname="$1"
    if ldconfig -p 2>/dev/null | grep -F "$soname" | grep -qE "(^|[[:space:]])${soname}([[:space:]]|$)"; then
        return 0
    fi
    local found=""
    found=$(find /usr/lib /usr/lib64 /lib /lib64 /usr/lib/x86_64-linux-gnu /usr/lib/aarch64-linux-gnu \
        -name "$soname" -print -quit 2>/dev/null || true)
    [ -n "$found" ]
}

logical_package_for_soname() {
    case "$1" in
        libwebkit2gtk-4.1.so.0|libjavascriptcoregtk-4.1.so.0) echo webkit2gtk ;;
        libgtk-3.so.0) echo gtk3 ;;
        libsecret-1.so.0) echo libsecret ;;
        libwpe-1.0.so.1) echo libwpe ;;
        libWPEWebKit-2.0.so.1) echo wpewebkit ;;
        libsoup-3.0.so.0) echo libsoup3 ;;
        libmpv.so.2) echo mpv ;;
        *) return 1 ;;
    esac
}

# Bundled libs are sometimes shipped as libfoo.so.1.2.3 without the SONAME symlink.
# Skip WPE: its helper processes live with the system package, not in the zip.
link_bundled_sonames() {
    local libdir="$1"
    local f soname
    [ -d "$libdir" ] || return 0
    for f in "$libdir"/*; do
        [ -f "$f" ] || continue
        soname=$(readelf -d "$f" 2>/dev/null | awk -F'[][]' '/SONAME/ {print $2; exit}')
        [ -n "$soname" ] || continue
        case "$soname" in
            libWPEWebKit-*|libwpe-*) continue ;;
        esac
        if [ ! -e "$libdir/$soname" ]; then
            ln -sf "$(basename "$f")" "$libdir/$soname"
        fi
    done
}

link_wpe_fallback() {
    local libdir="$1"
    local f soname linked=0
    [ -d "$libdir" ] || return 0
    for f in "$libdir"/*; do
        [ -f "$f" ] || continue
        soname=$(readelf -d "$f" 2>/dev/null | awk -F'[][]' '/SONAME/ {print $2; exit}')
        case "$soname" in
            libWPEWebKit-*|libwpe-*)
                if [ ! -e "$libdir/$soname" ]; then
                    ln -sf "$(basename "$f")" "$libdir/$soname"
                    linked=1
                fi
                ;;
        esac
    done
    if [ "$linked" -eq 1 ]; then
        warn_msg "Using bundled WPE libraries. Web views may crash without WPENetworkProcess from the system wpewebkit package."
    fi
}

ensure_runtime_libs() {
    local root="$1"
    local libdir=""
    libdir=$(find "$root" -type d -name lib -print -quit)

    if ! command -v readelf >/dev/null 2>&1; then
        warn_msg "readelf not found; skipping the runtime library scan. Install binutils if the app fails to start."
        return 0
    fi

    [ -n "$libdir" ] && link_bundled_sonames "$libdir"

    local missing_pkgs=()
    local missing_sonames=()
    local f soname pkg
    local -A seen_pkg=()
    local -A seen_soname=()

    while IFS= read -r f; do
        [ -n "$f" ] || continue
        readelf -d "$f" >/dev/null 2>&1 || continue
        while IFS= read -r soname; do
            [ -n "$soname" ] || continue
            if [ -n "$libdir" ] && [ -e "$libdir/$soname" ]; then
                continue
            fi
            if system_has_lib "$soname"; then
                continue
            fi
            pkg=$(logical_package_for_soname "$soname" 2>/dev/null || true)
            if [ -n "$pkg" ]; then
                if [ -z "${seen_pkg[$pkg]:-}" ]; then
                    seen_pkg[$pkg]=1
                    missing_pkgs+=("$pkg")
                fi
            elif [ -z "${seen_soname[$soname]:-}" ]; then
                seen_soname[$soname]=1
                missing_sonames+=("$soname")
            fi
        done < <(readelf -d "$f" 2>/dev/null | awk -F'[][]' '/NEEDED/ {print $2}')
    done < <(find "$root" -type f \( -name 'dartotsu' -o -name 'dartotsu.bin' -o -name '*.so' -o -name '*.so.*' \))

    if ! find /usr/lib /usr/lib64 /usr/lib/x86_64-linux-gnu /usr/lib/aarch64-linux-gnu \
        \( -name 'libgiognutls.so' -o -name 'libgioopenssl.so' \) -print -quit 2>/dev/null | grep -q .; then
        if [ -z "${seen_pkg[glib-networking]:-}" ]; then
            missing_pkgs+=("glib-networking")
        fi
    fi

    if [ ${#missing_pkgs[@]} -ne 0 ]; then
        warn_msg "This build needs: ${missing_pkgs[*]}"
        local install_now=0
        if is_containerized || [ ! -t 0 ]; then
            install_now=1
        else
            echo -e "${YELLOW}${BOLD}Install them now?${RESET} ${GRAY}(y/N)${RESET}: "
            read -rn 1 INSTALL_LIBS || true
            echo
            if [[ "${INSTALL_LIBS,,}" == "y" ]]; then
                install_now=1
            fi
        fi
        if [ "$install_now" -eq 1 ]; then
            if ! install_packages --soft "${missing_pkgs[@]}"; then
                link_wpe_fallback "$libdir"
            fi
        else
            warn_msg "Skipped library install. The app may not start."
            link_wpe_fallback "$libdir"
        fi
    fi

    if [ ${#missing_sonames[@]} -ne 0 ]; then
        warn_msg "Still missing libraries this script does not know how to install: ${missing_sonames[*]}"
    fi
}

download_with_progress() {
    local url="$1"
    local output="$2"
    local filename=$(basename "$url")

    echo -ne "${CYAN}${ICON_DOWNLOAD}${RESET} Downloading ${BOLD}${filename}${RESET}..."

    # Download in background and show spinner
    curl -fsL "$url" -o "$output" &
    local curl_pid=$!
    spinner $curl_pid
    wait $curl_pid
    local exit_code=$?

    if [ $exit_code -eq 0 ]; then
        echo -e " ${GREEN}${ICON_SUCCESS} Done!${RESET}"
    else
        echo -e " ${RED}${ICON_ERROR} Failed!${RESET}"
        return 1
    fi
}

install_app() {
    local requested="${1:-}"
    section_header "INSTALLATION PROCESS" "${ICON_INSTALL}"

    case "$(uname -s)" in
        Linux) ;;
        *) error_exit "This installer only supports Linux. Detected $(uname -s)." ;;
    esac

    if is_nix_environment; then
        nix_environment_notice
        pause
        return
    fi

    # Check dependencies with enhanced system
    info_msg "Checking system dependencies..."
    check_dependencies
    verify_installation
    echo -e "  ${GREEN}${ICON_SUCCESS} All dependencies verified!${RESET}"
    echo

    local ANSWER="$requested"
    if [ -z "$ANSWER" ]; then
        version_menu
        read -rn 1 ANSWER || true
        echo
    fi

    # Keep OWNER/REPO global. Alpha must not leak into a later stable install.
    local rel_owner="$OWNER"
    local rel_repo="$REPO"
    local channel="stable"
    local asset_mode="stable"
    local API_URL=""

    case "${ANSWER,,}" in
        p|pre|prerelease)
            channel="prerelease"
            asset_mode="prerelease"
            API_URL="https://api.github.com/repos/${rel_owner}/${rel_repo}/releases?per_page=20"
            info_msg "Fetching pre-release versions..."
            ;;
        a|alpha)
            channel="alpha"
            asset_mode="latest"
            rel_owner="grayankit"
            rel_repo="Dartotsu-Downloader"
            API_URL="https://api.github.com/repos/${rel_owner}/${rel_repo}/releases/latest"
            info_msg "Fetching alpha build..."
            echo
            compare_commits
            ;;
        s|stable|"")
            channel="stable"
            asset_mode="stable"
            API_URL="https://api.github.com/repos/${rel_owner}/${rel_repo}/releases/latest"
            info_msg "Fetching stable release..."
            ;;
        *)
            warn_msg "Invalid selection, defaulting to stable release..."
            channel="stable"
            asset_mode="stable"
            API_URL="https://api.github.com/repos/${rel_owner}/${rel_repo}/releases/latest"
            ;;
    esac

    local release_json="" asset_url=""
    release_json=$(curl -fsSL "$API_URL") || error_exit "Failed to fetch release info from GitHub."
    asset_url=$(printf '%s' "$release_json" | pick_linux_zip "$asset_mode") || error_exit "No Linux .zip found for the $channel channel."
    if [ -z "$asset_url" ]; then
        error_exit "No Linux .zip found for the $channel channel."
    fi
    ASSET_URL="$asset_url"

    # Download
    echo
    if ! download_with_progress "$ASSET_URL" "/tmp/$APP_NAME.zip"; then
        error_exit "Download failed!"
    fi

    # Installation
    echo
    info_msg "Installing to ${BOLD}$INSTALL_DIR${RESET}..."

    if [ -d "$INSTALL_DIR" ]; then
        warn_msg "Existing installation detected - removing old version..."
        rm -rf "$INSTALL_DIR"
    fi

    mkdir -p "$INSTALL_DIR"

    echo -ne "${CYAN}${ICON_INSTALL}${RESET} Extracting files..."
    if unzip "/tmp/$APP_NAME.zip" -d "$INSTALL_DIR" > /dev/null 2>&1; then
        echo -e " ${GREEN}${ICON_SUCCESS} Done!${RESET}"
    else
        echo -e " ${RED}${ICON_ERROR} Failed!${RESET}"
        error_exit "Failed to extract application files!"
    fi

    # Prefer the dartotsu wrapper over dartotsu.bin. find order is not stable.
    local app_executable=""
    app_executable=$(pick_app_executable "$INSTALL_DIR") || error_exit "No executable found in the extracted files!"
    if [ -z "$app_executable" ]; then
        error_exit "No executable found in the extracted files!"
    fi
    APP_EXECUTABLE="$app_executable"
    chmod +x "$APP_EXECUTABLE"

    ensure_runtime_libs "$INSTALL_DIR"

    # A symlink breaks the alpha wrapper, which does dirname "$0".
    install_launcher "$APP_EXECUTABLE"
    printf '%s\n' "$channel" > "$CHANNEL_FILE"

    # Install icon
    echo -ne "${CYAN}${ICON_DOWNLOAD}${RESET} Installing icon..."
    mkdir -p "$(dirname "$ICON_FILE")"
    fallback_icon_url='https://raw.githubusercontent.com/aayush2622/Dartotsu/main/assets/images/logo.png'
    if curl -fsSL "$fallback_icon_url" -o "$ICON_FILE"; then
        echo -e " ${GREEN}${ICON_SUCCESS} Done!${RESET}"
    else
        echo -e " ${YELLOW}${ICON_WARNING} Icon download failed (non-critical)${RESET}"
    fi

    # Create desktop entry
    echo -ne "${CYAN}${ICON_INSTALL}${RESET} Creating desktop entry..."
    mkdir -p "$(dirname "$DESKTOP_FILE")"
    cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=$APP_NAME
Comment=The Ultimate Anime & Manga Experience
Exec=$LINK %U
Icon=$ICON_FILE
Type=Application
Categories=AudioVideo;Player

MimeType=video/mp4;video/x-matroska;video/webm;audio/mpeg;audio/flac;x-scheme-handler/dartotsu;x-scheme-handler/dar;x-scheme-handler/anymex;x-scheme-handler/sugoireads;x-scheme-handler/mangayomi;x-scheme-handler/aniyomi;x-scheme-handler/tachiyomi;x-scheme-handler/mihon;x-scheme-handler/ireader;x-scheme-handler/legado;x-scheme-handler/yuedu;
EOL
    chmod +x "$DESKTOP_FILE"

    if command -v update-desktop-database >/dev/null 2>&1; then
        update-desktop-database "$HOME/.local/share/applications" 2>/dev/null
    fi
    echo -e " ${GREEN}${ICON_SUCCESS} Done!${RESET}"

    # Create shell alias for easy updates
    add_updater_alias

    # Cleanup
    rm -f "/tmp/$APP_NAME.zip"

    echo
    success_msg "$APP_NAME has been installed successfully!"
    info_msg "You can now launch it from your applications menu or run: ${BOLD}$APP_NAME${RESET}"

    echo
    pause
}

uninstall_app() {
    section_header "UNINSTALLATION PROCESS" "${ICON_UNINSTALL}"

    if [ ! -d "$INSTALL_DIR" ] && [ ! -e "$LINK" ] && [ ! -L "$LINK" ]; then
        warn_msg "$APP_NAME doesn't appear to be installed!"
        echo
        pause
        return
    fi

    echo -e "${YELLOW}${BOLD}Are you sure you want to remove $APP_NAME?${RESET} ${GRAY}(y/N)${RESET}: "
    read -rn 1 CONFIRM
    echo

    if [[ "${CONFIRM,,}" != "y" ]]; then
        info_msg "Uninstallation cancelled."
        echo
        echo -e "${GRAY}${DIM}Press any key to continue...${RESET}"
        read -rn 1
        return
    fi

    echo
    info_msg "Removing $APP_NAME components..."

    # Remove components
    if [ -e "$LINK" ] || [ -L "$LINK" ]; then
        rm -f "$LINK"
        echo -e "  ${GREEN}✓${RESET} Launcher removed"
    fi
    [ -d "$INSTALL_DIR" ] && rm -rf "$INSTALL_DIR" && echo -e "  ${GREEN}✓${RESET} Installation directory removed"
    [ -f "$DESKTOP_FILE" ] && rm -f "$DESKTOP_FILE" && echo -e "  ${GREEN}✓${RESET} Desktop entry removed"
    [ -f "$ICON_FILE" ] && rm -f "$ICON_FILE" && echo -e "  ${GREEN}✓${RESET} Icon removed"

    if command -v update-desktop-database >/dev/null 2>&1; then
        update-desktop-database "$HOME/.local/share/applications" 2>/dev/null
    fi

    echo
    success_msg "$APP_NAME has been completely removed!"

    echo
    echo -e "${GRAY}${DIM}Press any key to continue...${RESET}"
    read -rn 1
}

update_app() {
    section_header "UPDATE PROCESS" "${ICON_UPDATE}"

    if is_nix_environment; then
        nix_update_check
        echo -e "${GRAY}${DIM}Press any key to continue...${RESET}"
        read -rn 1
        return
    fi

    if [ ! -d "$INSTALL_DIR" ] && [ ! -e "$LINK" ] && [ ! -L "$LINK" ]; then
        warn_msg "$APP_NAME doesn't appear to be installed!"
        info_msg "Would you like to install it instead? ${GRAY}(y/N)${RESET}: "
        read -rn 1 INSTALL_INSTEAD
        echo

        if [[ "${INSTALL_INSTEAD,,}" == "y" ]]; then
            install_app
        else
            pause
        fi
        return
    fi

    local channel=""
    if [ -f "$CHANNEL_FILE" ]; then
        channel=$(tr -d '[:space:]' < "$CHANNEL_FILE")
    fi

    if [ -n "$channel" ]; then
        info_msg "Updating the ${BOLD}$channel${RESET} build..."
        echo
        install_app "$channel"
    else
        warn_msg "Couldn't tell which channel this install came from. Pick one."
        echo
        install_app
    fi
}

# =============================================================================
# 🚀 MAIN SCRIPT
# =============================================================================

main_loop() {
    while true; do
        show_banner
        show_menu
        read -rn 1 ACTION
        echo

        case "${ACTION,,}" in
            i|install)
                install_app
                ;;
            u|update)
                update_app
                ;;
            r|remove|uninstall)
                uninstall_app
                ;;
            q|quit|exit)
                echo
                type_text "Thanks for using Dartotsu Installer! ${ICON_SPARKLES}" 0.05
                echo -e "${GRAY}${DIM}Goodbye!${RESET}"
                exit 0
                ;;
            *)
                echo
                warn_msg "Invalid selection! Please choose I, U, R, or Q."
                echo -e "${GRAY}${DIM}Press any key to continue...${RESET}"
                read -rn 1
                ;;
        esac
    done
}

# Allow `source scripts/install.sh` to load helpers without installing.
if [ "${BASH_SOURCE[0]}" != "$0" ]; then
    return 0 2>/dev/null || exit 0
fi

# Check if running in interactive mode
if [ $# -gt 0 ]; then
    # Non-interactive mode - handle command line arguments
    ACTION="$1"
    case "${ACTION,,}" in
        install)
            show_banner
            install_app "${2:-}"
            ;;
        update)
            show_banner
            update_app
            ;;
        uninstall|remove)
            show_banner
            uninstall_app
            ;;
        *)
            show_banner
            echo -e "${RED}Usage: $0 [install [stable|prerelease|alpha]|update|uninstall]${RESET}"
            echo -e "${GRAY}Or run without arguments for interactive mode.${RESET}"
            exit 1
            ;;
    esac
elif [ -t 0 ]; then
    # Interactive mode - show menu
    main_loop
else
    # Fallback to interactive mode
    main_loop
fi
