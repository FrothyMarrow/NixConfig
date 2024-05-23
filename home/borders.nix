{pkgs, ...}: let
  configFileName = "bordersrc";

  config = pkgs.writeShellScriptBin configFileName ''
    options=(
      width=6
      hidpi=on
      style=round
      active_color=0xffee5396
    )

    borders "''${options[@]}"
  '';
in {
  xdg.enable = true;
  xdg.configFile."borders/${configFileName}".source = "${config}/bin/${configFileName}";
}
