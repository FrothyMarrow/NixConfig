{
  description = "My darwin system config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    neovim-flake.url = "github:notashelf/neovim-flake?ref=feature/breadcrumbs";
    neovim-flake.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    darwin,
    ...
  } @ inputs: let
    inherit (nixpkgs.lib) attrValues;
  in {
    darwinModules = {
      aix-general = import ./darwin/general.nix;
      aix-defaults = import ./darwin/defaults.nix;
      aix-services = import ./darwin/services.nix;
      aix-homebrew = import ./darwin/homebrew.nix;
    };

    homeManagerModules = {
      frothy-general = import ./home/general.nix;
      frothy-packages = import ./home/packages.nix;
      frothy-zsh = import ./home/zsh.nix;
      frothy-starship = import ./home/starship.nix;
      frothy-direnv = import ./home/direnv.nix;
      frothy-fzf = import ./home/fzf.nix;
      frothy-git = import ./home/git.nix;
      frothy-alacritty = import ./home/alacritty.nix;
      frothy-neovim = import ./home/neovim.nix;
      notashelf-neovim-flake = inputs.neovim-flake.homeManagerModules.default;
    };

    darwinConfigurations.aix = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules =
        attrValues self.darwinModules
        ++ [
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.frothy.imports = attrValues self.homeManagerModules;
          }
        ];
    };
  };
}
