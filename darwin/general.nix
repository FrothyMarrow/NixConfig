{
  inputs,
  pkgs,
  ...
}:
let
  username = "frothy";
in
{
  environment.shells = with pkgs; [
    bash
    zsh
  ];

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    coreutils
  ];

  nixpkgs.config.allowUnfree = true;

  nix.settings = {
    # recommended for direnv
    keep-derivations = true;
    keep-outputs = true;

    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nixpkgs.flake = {
    setFlakeRegistry = true;
    setNixPath = true;
  };

  users = {
    users.${username} = {
      name = username;
      home = "/Users/${username}";
    };
  };

  system.primaryUser = username;

  system.stateVersion = 4;
}
