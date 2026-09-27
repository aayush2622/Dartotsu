{
  description = "Dartotsu - packages the pre-built Linux release bundle from GitHub";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/eaad089433ca2bb662274377d33df3d0e51ef28b";
  inputs.nix-wpe-webkit-bin.url = "github:aayush2622/nix-wpe-webkit-bin/60484b22f066b447617b6abfa5b0caa666bc2d29";
  inputs.nix-wpe-webkit-bin.inputs.nixpkgs.follows = "nixpkgs";

  nixConfig = {
    extra-substituters = [ "https://wpewebkit-bin.cachix.org" ];
    extra-trusted-public-keys = [ "wpewebkit-bin.cachix.org-1:/ALEUaA8yEUbLGwgyJ+JT5UXxkCvaDakfve9zVROGf8=" ];
  };

  outputs = { self, nixpkgs, nix-wpe-webkit-bin }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
      wpewebkitPrebuilt = nix-wpe-webkit-bin.packages.${system}.default;

      wpewebkit =
        assert pkgs.lib.assertMsg
          (pkgs.lib.hasInfix "no-cc" wpewebkitPrebuilt.stdenv.name
            && pkgs.lib.hasSuffix "-x86_64-linux.tar.gz" wpewebkitPrebuilt.src.name)
          ''
            nix-wpe-webkit-bin no longer resolves to the prebuilt WPEWebKit tarball:
              stdenv = ${wpewebkitPrebuilt.stdenv.name} (expected a *-no-cc stdenv)
              src    = ${wpewebkitPrebuilt.src.name} (expected wpewebkit-*-x86_64-linux.tar.gz)
            Refusing to continue -- this would compile WebKit from source.
          '';
        wpewebkitPrebuilt;

      channels = builtins.fromJSON (builtins.readFile ./channels.json);

      channelExtraLibs = {
        alpha = [ pkgs.webkitgtk_4_1 ];
      };

      mkDartotsu = channel: { version, hash }:
        let
          suffix = pkgs.lib.optionalString (channel != "stable") "-${channel}";
          exe = "dartotsu${suffix}";
        in
        pkgs.stdenv.mkDerivation (finalAttrs: {
          pname = "dartotsu${suffix}";
          inherit version;

          passthru.channel = channel;

          src = pkgs.fetchzip {
            url = "https://github.com/aayush2622/Dartotsu/releases/download/v${finalAttrs.version}/Dartotsu_LinuxZip_v${finalAttrs.version}.zip";
            inherit hash;
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

            wpewebkit
            libwpe
            libwpe-fdo

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
          ] ++ (channelExtraLibs.${channel} or [ ]);

          autoPatchelfIgnoreMissingDeps = [ "libjvm.so" ];

          dontBuild = true;
          dontConfigure = true;

          postPatch = ''
            rm -f lib/libWPEWebKit-2.0.so.* lib/libwpe-1.0.so.* lib/libWPEBackend-fdo-1.0.so.*
          '';

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
              exec = exe;
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

            wpewebkit
            libwpe
            libwpe-fdo
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