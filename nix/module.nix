{
  packageFor,
  linkSchemes,
  homeManager,
  packageDefaultText ? "dartotsu.packages.\${system}.\${config.programs.dartotsu.channel}",
}:
{ config, lib, pkgs, ... }:
let
  cfg = config.programs.dartotsu;
  handlers = lib.genAttrs
    (map (scheme: "x-scheme-handler/${scheme}") linkSchemes)
    (_: cfg.package.desktopFile);
in
{
  options.programs.dartotsu = {
    enable = lib.mkEnableOption "Dartotsu, an AniList client";

    channel = lib.mkOption {
      type = lib.types.enum [ "stable" "prerelease" "alpha" ];
      default = "stable";
      description = ''
        Which release channel to install. The prerelease channel ships the
        WebKitGTK 4.1 build; the stable and alpha channels may still bundle
        WPE WebKit.
      '';
    };

    package = lib.mkOption {
      type = lib.types.package;
      default = packageFor pkgs cfg.channel;
      defaultText = lib.literalExpression packageDefaultText;
      description = "The Dartotsu package to install.";
    };

    registerLinkHandlers = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = ''
        Make Dartotsu the default handler for its link schemes
        (dartotsu://, mangayomi://, aniyomi://, ...). Only applies to a
        package that declares link handling, which is the stable channel.
      '';
    };
  };

  config = lib.mkIf cfg.enable (lib.mkMerge [
    (if homeManager then {
      home.packages = [ cfg.package ];
    } else {
      environment.systemPackages = [ cfg.package ];
    })

    (lib.mkIf (cfg.registerLinkHandlers && (cfg.package.handlesLinks or false))
      (if homeManager then {
        xdg.mimeApps = {
          enable = true;
          defaultApplications = handlers;
        };
      } else {
        xdg.mime.defaultApplications = handlers;
      }))
  ]);
}
