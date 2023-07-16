{pkgs, ...}: {
  home.packages = with pkgs; [
    obsidian
    element-desktop

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
      ];
    })
  ];
}
