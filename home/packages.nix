{pkgs, ...}: {
  home.packages = with pkgs; [
    element-desktop
    qbittorrent
    zathura
    ripgrep
    fd
    lsd
    (mpv.override {
      mpv = mpv-unwrapped.override {
        vulkanSupport = true;
      };
    })
    (nerdfonts.override {
      fonts = [
        "Iosevka"
      ];
    })
  ];
}
