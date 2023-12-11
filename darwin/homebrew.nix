{
  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = false;

  homebrew.taps = [
    "FelixKratz/formulae"
  ];

  homebrew.brews = [
    # for vscode-neovim
    "neovim"
    {
      name = "borders";
      restart_service = "changed";
    }
  ];

  homebrew.casks = [
    "bitwarden"
    "microsoft-office"
    "microsoft-teams"
    "vscodium"
    # great game btw
    "minecraft"
    "arc"
    "raycast"
    "amethyst"
    "whatsapp"
    "firefox"
    "notion"
    "stats"
  ];

  homebrew.masApps = {
    "WireGuard" = 1451685025;
  };
}
