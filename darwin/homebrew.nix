{
  homebrew.enable = true;
  homebrew.onActivation = {
    autoUpdate = true;
    cleanup = "zap";
  };

  homebrew.taps = [
    "FelixKratz/formulae"
    "homebrew/services"
  ];

  homebrew.brews = [
    # for vscode-neovim
    "neovim"
    "mgba"
    {
      name = "borders";
      restart_service = "changed";
    }
  ];

  homebrew.casks = [
    "visual-studio-code"
    "karabiner-elements"
    "zed"
    "raycast"
    "amethyst"
    "whatsapp"
    "firefox"
    "stats"
    "ghostty"
  ];
}
