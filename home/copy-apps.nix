{
  config,
  lib,
  pkgs,
  ...
}: let
  srcDir = "$newGenPath/home-path/Applications";
  baseDir = "${config.home.homeDirectory}/Applications/Home Manager Apps";

  copyScript = ''
    srcDir="${srcDir}"
    if [ -d "$srcDir" ]; then
      baseDir="${baseDir}"
      rsyncFlags=(
        --delete
        --archive
        --checksum
        --chmod=-w
        --no-group
        --no-owner
        --copy-unsafe-links
      )
      $DRY_RUN_CMD mkdir -p "$baseDir"
      $DRY_RUN_CMD ${lib.getBin pkgs.rsync}/bin/rsync \
        ''${VERBOSE_ARG:+-v} "''${rsyncFlags[@]}" "$srcDir/" "$baseDir"
    fi
  '';
in {
  # Disable the default darwin linkapps module, which would otherwise
  # create a symlink from $newGenPath/home-path/Applications
  disabledModules = ["targets/darwin/linkapps.nix"];

  home.activation.copyApplications = lib.hm.dag.entryAfter ["writeBoundary"] copyScript;
}
