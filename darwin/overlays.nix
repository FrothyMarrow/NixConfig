{
  inputs,
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
      };

      swift = inputs.last-cached-swift-nixpkgs.legacyPackages.aarch64-darwin.swift;
    })
  ];
}
