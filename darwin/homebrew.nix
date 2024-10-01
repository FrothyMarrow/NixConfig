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
    "bitwarden"
    "microsoft-office"
    "karabiner-elements"
    "microsoft-teams"
    "prismlauncher"
    "intellij-idea"
    "android-studio"
    "macfuse"
    "arc"
    "zed"
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
