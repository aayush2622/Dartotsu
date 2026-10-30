{
  stdenv,
  lib,
  fetchzip,
  autoPatchelfHook,
  makeWrapper,
  copyDesktopItems,
  imagemagick,
  makeDesktopItem,
  addDriverRunpath,
  glib-networking,
  gtk3,
  glib,
  zlib,
  libdrm,
  libgbm,
  lcms2,
  mesa,
  fontconfig,
  fribidi,
  freetype,
  harfbuzz,
  alsa-lib,
  libpulseaudio,
  wayland,
  libxkbcommon,
  libx11,
  libxcb,
  libxfixes,
  libxext,
  libxrandr,
  libxscrnsaver,
  libxv,
  webkitgtk_4_1,
  libseccomp,
  gst_all_1,
  libinput,
  libxslt,
  woff2,
  libgcrypt,
  libgpg-error,
  libjxl,
  libavif,
  hyphen,
  libsecret,
  libsoup_3,
  at-spi2-core,
  libepoxy,
  systemd,
  expat,
  libwebp,
  icu,
  libjpeg,
  libjpeg8,
  libpng,
  libxml2,
  libtasn1,
  sqlite,
  mpv-unwrapped,
  libva,
  libvdpau,
  libunwind,
  libarchive,
}:
{
  channel,
  version,
  url,
  hash,
}:
let
  suffix = lib.optionalString (channel != "stable") "-${channel}";
  exe = "dartotsu${suffix}";
  linkSchemes = import ./link-schemes.nix;
  harfbuzzIcu = harfbuzz.override { withIcu = true; };
in
stdenv.mkDerivation (finalAttrs: {
  pname = "dartotsu${suffix}";
  inherit version;

  passthru = {
    inherit channel exe;
    handlesLinks = channel == "stable";
    desktopFile = "${exe}.desktop";
  };

  src = fetchzip {
    inherit url hash;
    stripRoot = false;
  };

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
    copyDesktopItems
    imagemagick
  ];

  buildInputs = [
    gtk3
    glib
    zlib
    libdrm
    libgbm
    lcms2
    mesa
    fontconfig
    fribidi
    freetype
    harfbuzz
    harfbuzzIcu
    alsa-lib
    libpulseaudio
    wayland
    libxkbcommon
    libx11
    libxcb
    libxfixes
    libxext
    libxrandr
    libxscrnsaver
    libxv
    stdenv.cc.cc.lib

    webkitgtk_4_1

    libseccomp
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-bad
    libinput
    libxslt
    woff2
    libgcrypt
    libgpg-error
    libjxl
    libavif
    hyphen
    libsecret
    libsoup_3
    at-spi2-core
    libepoxy
    systemd
    expat
    libwebp
    icu
    libjpeg
    libjpeg8
    libpng
    libxml2
    libtasn1
    sqlite

    mpv-unwrapped
    libva
    libvdpau
    libunwind
    libarchive
  ];

  autoPatchelfIgnoreMissingDeps = [ "libjvm.so" ];

  dontBuild = true;
  dontConfigure = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/app/dartotsu
    cp -r ./* $out/app/dartotsu/

    for f in $out/app/dartotsu/lib/lib*.so.*.*; do
      base="$(basename "$f")"
      soname="$(echo "$base" | sed -E 's/(\.so\.[0-9]+)\.[0-9]+(\.[0-9]+)*$/\1/')"
      if [ "$soname" != "$base" ] && [ ! -e "$out/app/dartotsu/lib/$soname" ]; then
        ln -s "$base" "$out/app/dartotsu/lib/$soname"
      fi
    done

    wrapperArgs=()
    if [ -n "$(find "$out/app/dartotsu/lib" -maxdepth 1 -name 'libWPEWebKit*' -print -quit)" ]; then
      wrapperArgs+=(--run 'echo "dartotsu: this release bundles WPE WebKit, whose helper processes are not packaged for Nix; in-app web views may fail. Use the prerelease channel (WebKitGTK 4.1) instead." >&2')
    fi

    mkdir -p $out/bin
    makeWrapper $out/app/dartotsu/dartotsu $out/bin/${exe} \
      "''${wrapperArgs[@]}" \
      --prefix LD_LIBRARY_PATH : "$out/app/dartotsu/lib" \
      --prefix LD_LIBRARY_PATH : "${addDriverRunpath.driverLink}/lib" \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath finalAttrs.buildInputs} \
      --set-default GIO_EXTRA_MODULES "${glib-networking}/lib/gio/modules"

    logo=$out/app/dartotsu/data/flutter_assets/assets/images/logo.png
    if [ -f "$logo" ]; then
      size=$(identify -format '%wx%h' "$logo")
      install -Dm644 "$logo" "$out/share/icons/hicolor/$size/apps/${exe}.png"
      install -Dm644 "$logo" "$out/share/pixmaps/${exe}.png"
    else
      echo "logo.png missing from the release bundle - desktop entry would have no icon" >&2
      exit 1
    fi

    runHook postInstall
  '';

  desktopItems = [
    (makeDesktopItem {
      name = exe;
      exec = "${exe} %U";
      icon = exe;
      desktopName = "Dartotsu" + lib.optionalString (channel != "stable") " (${channel})";
      genericName = "Anilist client";
      comment = "The Ultimate Anime & Manga Experience";
      categories = [ "AudioVideo" "Player" ];
      mimeTypes = lib.optionals (channel == "stable") (
        [
          "video/mp4"
          "video/x-matroska"
          "video/webm"
          "audio/mpeg"
          "audio/flac"
        ]
        ++ map (scheme: "x-scheme-handler/${scheme}") linkSchemes
      );
    })
  ];

  meta = {
    description = "An Anilist client";
    homepage = "https://github.com/aayush2622/Dartotsu";
    license = lib.licenses.unfree;
    platforms = [ "x86_64-linux" ];
    mainProgram = exe;
  };
})
