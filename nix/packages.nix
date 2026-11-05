# Channel packages from channels.json. Both the flake and nix/nur.nix import this.
{ pkgs }:
let
  channels = builtins.fromJSON (builtins.readFile ../channels.json);
  mk = pkgs.callPackage ./package.nix { };
in
pkgs.lib.mapAttrs (channel: spec: mk ({ inherit channel; } // spec)) channels
