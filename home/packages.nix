{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
    ripgrep
    fd
    (nerdfonts.override {
      fonts = [
        "Iosevka"
      ];
    })
  ];
}
