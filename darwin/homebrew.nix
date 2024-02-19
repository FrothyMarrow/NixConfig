{
  homebrew.enable = true;
  homebrew.onActivation = {
    autoUpdate = true;
    cleanup = "zap";
  };

  homebrew.taps = [
    "FelixKratz/formulae"
  ];

  homebrew.brews = [
    # for vscode-neovim
    "neovim"
    "macos-trash"
    {
      name = "borders";
      restart_service = "changed";
    }
  ];

  homebrew.casks = [
    "bitwarden"
    "microsoft-office"
    "microsoft-teams"
    "macfuse"
    "vscodium"
    # great game btw
    "minecraft"
    "arc"
    "raycast"
    "amethyst"
    "whatsapp"
    "firefox"
    "stats"
  ];

  homebrew.masApps = {
    "WireGuard" = 1451685025;
  };
}
