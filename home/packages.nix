{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
    mpv
    ripgrep
    fd
    lsd
    (nerdfonts.override {
      fonts = [
        "Iosevka"
      ];
    })
  ];
}
