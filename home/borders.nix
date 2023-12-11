{pkgs, ...}: let
  configFileName = "bordersrc";

  config = pkgs.writeShellScriptBin configFileName ''
    options=(
      width=6
      hidpi=on
      style=round
      active_color=0xffea76cb
    )

    borders "''${options[@]}"
  '';
in {
  xdg.enable = true;
  xdg.configFile."borders/${configFileName}".source = "${config}/bin/${configFileName}";
}
