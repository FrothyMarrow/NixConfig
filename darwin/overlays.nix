{
  pkgs,
  lib,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      vencord = prev.vencord.overrideAttrs {
        patches = [
          ../patches/VencordConfigDir.patch
        ];
      };

      vscode-extensions = lib.recursiveUpdate prev.vscode-extensions {
        frothymarrow.alice-carbon = pkgs.callPackage ../pkgs/alice-carbon.nix {};

        leonardssh.vscord = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
          mktplcRef = {
            name = "vscord";
            publisher = "leonardssh";
            version = "5.2.12";
            hash = "sha256-WGDEizYG6UAqe1jnhvjfFouXDA9Yr5P+BjxPahAIsTE=";
          };
          meta = {
            description = "Highly customizable Discord Rich Presence extension for Visual Studio Code";
            downloadPage = "https://marketplace.visualstudio.com/items?itemName=leonardssh.vscord";
            homepage = "https://github.com/leonardssh/vscord";
            license = lib.licenses.mit;
          };
        };
      };
    })
  ];
}
