# NUR entry point. NUR calls this as `{ pkgs }:` under restricted eval.
# Do not import <nixpkgs>, use flake inputs, or fetch during evaluation.
# Hashes and versions come from ../channels.json, the same file the flake uses.
{ pkgs }:
let
  packages = import ./packages.nix { inherit pkgs; };
in
packages
// {
  modules = {
    nixos = ./modules/nixos.nix;
    homeManager = ./modules/home-manager.nix;
  };
  overlays.default = import ./overlay.nix;
}
