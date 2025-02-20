{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
    ripgrep
    fd
    nerd-fonts.iosevka
  ];
}
