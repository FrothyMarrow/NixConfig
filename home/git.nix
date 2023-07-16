{
  programs.git.enable = true;

  programs.git.extraConfig = {
    user = {
      name = "Frothy";
      email = "76622149+FrothyMarrow@users.noreply.github.com";
    };

    init = {
      defaultBranch = "main";
    };
  };
}
