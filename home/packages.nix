{pkgs, ...}: {
  home.packages = with pkgs; [
    obsidian
    element-desktop
    qbittorrent
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
    (discord.override {
      withVencord = true;
    })
  ];
}
