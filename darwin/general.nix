{
  inputs,
  pkgs,
  ...
}: let
  username = "frothy";
in {
  # shells
  environment.shells = with pkgs; [bash zsh];

  programs.zsh.enable = true;

  # system packages
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

  nix.buildMachines = [
    {
      hostName = "lix";
      system = "x86_64-linux";
      protocol = "ssh";
      maxJobs = 4;
      supportedFeatures = ["kvm" "nixos-test" "benchmark" "big-parallel"];
    }
  ];
  nix.distributedBuilds = true;

  users = {
    users.${username} = {
      name = "${username}";
      home = "/Users/${username}";
    };
  };

  system.stateVersion = 4;
}
