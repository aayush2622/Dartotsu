{
  description = "Dartotsu - packages the pre-built Linux release bundle from GitHub";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
      channels = builtins.fromJSON (builtins.readFile ./channels.json);

      mkDartotsu = channel: { version, url, hash }:
        let
          suffix = pkgs.lib.optionalString (channel != "stable") "-${channel}";
          exe = "dartotsu${suffix}";
        in
        pkgs.stdenv.mkDerivation (finalAttrs: {
          pname = "dartotsu${suffix}";
          inherit version;

          passthru.channel = channel;

          src = pkgs.fetchzip {
            inherit url hash;
            stripRoot = false;
          };

          nativeBuildInputs = [
            pkgs.autoPatchelfHook
            pkgs.makeWrapper
            pkgs.copyDesktopItems
            pkgs.imagemagick
          ];

          buildInputs = with pkgs; [
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
            (harfbuzz.override { withIcu = true; })
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
            libpng
            libxml2
            libtasn1

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

            mkdir -p $out/bin
            makeWrapper $out/app/dartotsu/dartotsu $out/bin/${exe} \
              --prefix LD_LIBRARY_PATH : "$out/app/dartotsu/lib" \
              --prefix LD_LIBRARY_PATH : "${pkgs.addDriverRunpath.driverLink}/lib" \
              --prefix LD_LIBRARY_PATH : ${pkgs.lib.makeLibraryPath finalAttrs.buildInputs}

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
            (pkgs.makeDesktopItem {
              name = exe;
              exec = "${exe} %U";
              icon = exe;
              desktopName = "Dartotsu" + pkgs.lib.optionalString (channel != "stable") " (${channel})";
              genericName = "Anilist client";
              comment = "The Ultimate Anime & Manga Experience";
              categories = [ "AudioVideo" "Player" ];
              mimeTypes = pkgs.lib.optionals (channel == "stable") [
                "video/mp4"
                "video/x-matroska"
                "video/webm"
                "audio/mpeg"
                "audio/flac"
                "x-scheme-handler/dar"
                "x-scheme-handler/anymex"
                "x-scheme-handler/sugoireads"
                "x-scheme-handler/mangayomi"
                "x-scheme-handler/dartotsu"
                "x-scheme-handler/aniyomi"
                "x-scheme-handler/tachiyomi"
                "x-scheme-handler/ireader"
                "x-scheme-handler/legado"
                "x-scheme-handler/yuedu"
              ];
            })
          ];

          meta = {
            description = "An Anilist client";
            homepage = "https://github.com/aayush2622/Dartotsu";
            license = pkgs.lib.licenses.unfree;
            platforms = [ "x86_64-linux" ];
            mainProgram = exe;
          };
        });

    in
    {
      packages.${system} =
        (pkgs.lib.mapAttrs mkDartotsu channels)
        // {
          default = self.packages.${system}.stable;
        };

      devShells.${system}.default =
        let
          linkLibs = with pkgs; [
            gtk3
            glib
            pcre2
            libepoxy
            libxkbcommon
            wayland
            libx11
            libxcb
            libxfixes
            libxext
            libxrandr
            libxscrnsaver
            libxv
            libgbm
            libdrm
            mesa
            fontconfig
            freetype
            fribidi
            harfbuzz
            (harfbuzz.override { withIcu = true; })

            webkitgtk_4_1
            libsoup_3
            libsecret
            at-spi2-core
            libseccomp
            gst_all_1.gstreamer
            gst_all_1.gst-plugins-base
            libinput
            systemd
            expat
            libwebp
            icu
            libxml2
            libxslt
            lcms2
            woff2
            libgcrypt
            libgpg-error
            libjxl
            libavif
            libtasn1
            hyphen
            libjpeg
            libpng
            zlib
            gnutls
            dbus

            mpv-unwrapped
            libva
            libvdpau
            libunwind
            libarchive
            alsa-lib
            libpulseaudio
          ];
          libPath = pkgs.lib.makeLibraryPath linkLibs;
        in
        pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            flutter
            cmake
            ninja
            pkg-config
            clang
            gdb
          ];

          buildInputs = linkLibs;

          NIX_LDFLAGS = pkgs.lib.concatMapStringsSep " "
            (d: "-L${d} -rpath-link ${d}")
            (pkgs.lib.splitString ":" libPath);

          LD_LIBRARY_PATH = libPath;
        };
    };
}