{
  _class = "nixos";
  imports = [
    (import ../module.nix {
      homeManager = false;
      linkSchemes = import ../link-schemes.nix;
      packageFor = pkgs: channel: (import ../packages.nix { inherit pkgs; }).${channel};
      packageDefaultText = "pkgs.nur.repos.dartotsu.\${config.programs.dartotsu.channel}";
    })
  ];
}
