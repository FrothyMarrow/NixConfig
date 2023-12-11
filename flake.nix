{
  description = "My darwin system config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    neovim-flake.url = "github:notashelf/neovim-flake";
    neovim-flake.inputs.nixpkgs.follows = "nixpkgs";

    spicetify-nix.url = "github:gerg-l/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    darwin,
    ...
  } @ inputs: let
    inherit (nixpkgs.lib) attrValues;

    system = "aarch64-darwin";

    pkgs = import nixpkgs {
      inherit system;
    };

    darwinModules = {
      aix-general = ./darwin/general.nix;
      aix-defaults = ./darwin/defaults.nix;
      aix-services = ./darwin/services.nix;
      aix-homebrew = ./darwin/homebrew.nix;
    };

    homeManagerModules = {
      frothy-general = ./home/general.nix;
      frothy-packages = ./home/packages.nix;
      frothy-zsh = ./home/zsh.nix;
      frothy-starship = ./home/starship.nix;
      frothy-direnv = ./home/direnv.nix;
      frothy-fzf = ./home/fzf.nix;
      frothy-git = ./home/git.nix;
      frothy-alacritty = ./home/alacritty.nix;
      frothy-wezterm = ./home/wezterm.nix;
      frothy-neovim = ./home/neovim.nix;
      frothy-copy-apps = ./home/copy-apps.nix;
      frothy-spicetify = ./home/spicetify.nix;
      frothy-borders = ./home/borders.nix;
      notashelf-neovim-flake = inputs.neovim-flake.homeManagerModules.default;
    };
  in {
    darwinConfigurations.aix = darwin.lib.darwinSystem {
      inherit system;
      modules =
        attrValues darwinModules
        ++ [
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.frothy.imports = attrValues homeManagerModules;
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
        ];
      specialArgs = {inherit inputs;};
    };

    formatter.${system} = pkgs.alejandra;

    devShells.${system}.default = pkgs.mkShell {
      packages = [
        pkgs.git
        pkgs.nil
        pkgs.alejandra
      ];
    };
  };
}
