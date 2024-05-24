{pkgs, ...}: {
  home.packages = with pkgs; [
    obsidian
    element-desktop
    qbittorrent
    zathura
    mpv
    bitwarden-cli
    linode-cli
    onefetch
    lazygit
    ripgrep
    fd
    comma
    lsd
    tree
    (nerdfonts.override {
      fonts = [
        "Meslo"
        "Iosevka"
      ];
    })
  ];
}
