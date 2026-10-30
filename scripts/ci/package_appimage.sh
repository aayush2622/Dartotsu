#!/usr/bin/env bash
# Package the Flutter Linux bundle as a single-file AppImage.
# GTK / WebKitGTK stay on the host, same as the zip release.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

SAFE_REF="${SAFE_REF:?SAFE_REF is required}"
BUNDLE="build/linux/x64/release/bundle"
APPDIR="build/linux/x64/release/AppDir"
OUT="build/linux/x64/release/Dartotsu_Linux_${SAFE_REF}.AppImage"
TOOL_URL="https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-x86_64.AppImage"
TOOL_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "$TOOL_DIR"
  rm -rf "$APPDIR"
}
trap cleanup EXIT

if [[ ! -x "$BUNDLE/dartotsu" ]]; then
  echo "Linux bundle is missing: $BUNDLE/dartotsu" >&2
  exit 1
fi
if ! command -v mksquashfs >/dev/null 2>&1; then
  echo "mksquashfs is required (squashfs-tools)" >&2
  exit 1
fi

curl -fsSL -o "$TOOL_DIR/appimagetool" "$TOOL_URL"
chmod +x "$TOOL_DIR/appimagetool"
(
  cd "$TOOL_DIR"
  ./appimagetool --appimage-extract
)
if [[ ! -x "$TOOL_DIR/squashfs-root/AppRun" && -x "$ROOT/squashfs-root/AppRun" ]]; then
  mv "$ROOT/squashfs-root" "$TOOL_DIR/squashfs-root"
fi
if [[ ! -x "$TOOL_DIR/squashfs-root/AppRun" ]]; then
  echo "failed to extract appimagetool" >&2
  exit 1
fi

rm -rf "$APPDIR"
mkdir -p "$APPDIR/usr/bin"
cp -a "$BUNDLE"/. "$APPDIR/usr/bin/"
rm -f "$APPDIR/usr/bin/"*.zip

cat > "$APPDIR/AppRun" << 'EOF'
#!/bin/sh
HERE="$(dirname "$(readlink -f "$0")")"
export LD_LIBRARY_PATH="${HERE}/usr/bin/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
exec "${HERE}/usr/bin/dartotsu" "$@"
EOF
chmod +x "$APPDIR/AppRun"

cp assets/images/logo.png "$APPDIR/dartotsu.png"
ln -s dartotsu.png "$APPDIR/.DirIcon"

cat > "$APPDIR/dartotsu.desktop" << 'EOF'
[Desktop Entry]
Name=Dartotsu
Comment=The Ultimate Anime & Manga Experience
Exec=dartotsu %U
Icon=dartotsu
Type=Application
Categories=AudioVideo;Player;
Terminal=false
StartupWMClass=ani.aayush262.dartotsu
MimeType=video/mp4;video/x-matroska;video/webm;audio/mpeg;audio/flac;x-scheme-handler/dartotsu;x-scheme-handler/dar;x-scheme-handler/anymex;x-scheme-handler/sugoireads;x-scheme-handler/mangayomi;x-scheme-handler/aniyomi;x-scheme-handler/tachiyomi;x-scheme-handler/mihon;x-scheme-handler/ireader;x-scheme-handler/legado;x-scheme-handler/yuedu;
EOF

ARCH=x86_64 "$TOOL_DIR/squashfs-root/AppRun" --no-appstream "$APPDIR" "$OUT"
chmod +x "$OUT"
echo "Wrote $OUT"
