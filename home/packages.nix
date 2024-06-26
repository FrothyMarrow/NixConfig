{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
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
