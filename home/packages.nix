{ pkgs, ... }:
{
  home.packages = with pkgs; [
    zathura
    ripgrep
    fd
  ];
}
