{
  programs.starship.enable = true;

  programs.starship.enableZshIntegration = true;

  programs.starship.settings = {
    character = {
      success_symbol = "[➜](green) ";
      error_symbol = "[➜](red) ";
    };
    nix_shell = {
      symbol = "❄️ ";
    };
  };
}
