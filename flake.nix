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

    wezterm-oxocarbon.url = "github:nyoom-engineering/oxocarbon-wezterm";
    wezterm-oxocarbon.flake = false;
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    darwin,
    ...
  } @ inputs: let
    system = "aarch64-darwin";

    pkgs = import nixpkgs {
      inherit system;
    };

    darwinModules = [
      ./darwin/general.nix
      ./darwin/defaults.nix
      ./darwin/services.nix
      ./darwin/homebrew.nix
      ./darwin/overlays.nix
    ];

    homeManagerModules = [
      ./home/general.nix
      ./home/packages.nix
      ./home/zsh.nix
      ./home/starship.nix
      ./home/direnv.nix
      ./home/fzf.nix
      ./home/git.nix
      ./home/wezterm.nix
      ./home/neovim.nix
      ./home/copy-apps.nix
      ./home/spicetify.nix
      ./home/borders.nix
      ./home/discord/discord.nix
      inputs.neovim-flake.homeManagerModules.default
    ];
  in {
    darwinConfigurations.aix = darwin.lib.darwinSystem {
      inherit system;
      modules =
        darwinModules
        ++ [
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "hbk";
            home-manager.users.frothy.imports = homeManagerModules;
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
