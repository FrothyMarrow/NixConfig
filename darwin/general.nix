{
  inputs,
  pkgs,
  ...
}: let
  username = "frothy";
in {
  # shells
  environment.shells = with pkgs; [bash zsh];
  environment.loginShell = pkgs.zsh;

  programs.zsh.enable = true;

  # system packages
  environment.systemPackages = with pkgs; [
    vim
    coreutils
  ];

  nixpkgs.config.allowUnfree = true;

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nix.settings = {
    # recommended for direnv
    keep-derivations = true;
    keep-outputs = true;

    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nix.nixPath = ["nixpkgs=${inputs.nixpkgs}"];
  nix.registry.nixpkgs.flake = inputs.nixpkgs;

  users.users.${username} = {
    name = "${username}";
    home = "/Users/${username}";
  };

  system.stateVersion = 4;
}
