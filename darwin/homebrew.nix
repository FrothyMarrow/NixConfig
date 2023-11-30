{
  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = false;

  homebrew.brews = [
    # for vscode-neovim
    "neovim"
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
    "discord"
    "firefox"
    "notion"
    "stats"
  ];

  homebrew.masApps = {
    "WireGuard" = 1451685025;
  };
}
