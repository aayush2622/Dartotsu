# Nix expressions in this file and nix/ are MIT. See nix/LICENSE.
# The packaged application is not.
{
  description = "Dartotsu - packages the pre-built Linux release bundle from GitHub";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
      channelPackages = import ./nix/packages.nix { inherit pkgs; };
      linkSchemes = import ./nix/link-schemes.nix;
      moduleFor = homeManager: import ./nix/module.nix {
        inherit linkSchemes homeManager;
        packageFor = p: channel: self.packages.${p.stdenv.hostPlatform.system}.${channel};
      };
    in
    {
      packages.${system} = channelPackages // {
        default = self.packages.${system}.stable;
      };

      overlays.default = import ./nix/overlay.nix;

      apps.${system} = pkgs.lib.mapAttrs
        (_: package: {
          type = "app";
          program = "${package}/bin/${package.exe}";
        })
        channelPackages
      // {
        default = self.apps.${system}.stable;
      };

      nixosModules.default = moduleFor false;
      homeManagerModules.default = moduleFor true;

      checks.${system} = import ./nix/checks.nix {
        inherit pkgs nixpkgs self system;
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
            libjpeg8
            libpng
            zlib
            sqlite
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

          GIO_EXTRA_MODULES = "${pkgs.glib-networking}/lib/gio/modules";
        };
    };
}
