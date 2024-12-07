{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
    ripgrep
    nerd-fonts.iosevka
  ];
}
