{
  homebrew.enable = true;
  homebrew.onActivation = {
    autoUpdate = true;
    cleanup = "zap";
  };

  homebrew.taps = [
    "homebrew/services"
  ];

  homebrew.brews = [
    # for vscode-neovim
    "neovim"
  ];

  homebrew.casks = [
    "visual-studio-code"
    "amethyst"
    "whatsapp"
    "firefox"
    "stats"
    "ghostty"
    "mullvad-vpn"
    "discord"
  ];
}
