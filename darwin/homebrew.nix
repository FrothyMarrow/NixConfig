{
  homebrew.enable = true;
  homebrew.onActivation.autoUpdate = false;

  homebrew.brews = [
    "linode-cli"
    "bitwarden-cli"
  ];

  homebrew.casks = [
    "bitwarden"
    "betterdiscord-installer"
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
