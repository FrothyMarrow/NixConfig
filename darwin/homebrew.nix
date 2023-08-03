{
  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = false;

  homebrew.brews = [
    "bitwarden-cli"
  ];

  homebrew.casks = [
    "bitwarden"
    "microsoft-office"
    "microsoft-teams"
    # great game btw
    "minecraft"
    "arc"
    "raycast"
    # yabai is just for blur and window borders
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
