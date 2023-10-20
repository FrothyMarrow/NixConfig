{
  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = false;

  homebrew.casks = [
    "bitwarden"
    "betterdiscord-installer"
    "microsoft-office"
    "microsoft-teams"
    # great game btw
    "minecraft"
    "arc"
    "raycast"
    "amethyst"
    "whatsapp"
    "discord"
    "spotify"
    "firefox"
    "notion"
    "stats"
  ];

  homebrew.masApps = {
    "WireGuard" = 1451685025;
  };
}
