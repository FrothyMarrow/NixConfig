{
  programs.zsh.enable = true;

  programs.zsh = {
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  programs.zsh.sessionVariables = {
    EDITOR = "nvim";
  };

  # aliases
  programs.zsh.shellAliases = {
    darwinsw = "darwin-rebuild switch --flake ~/.config/NixConfig";

    ls = "lsd";
    la = "lsd -a";
    ll = "lsd -la";
    tree = "tree -aC";

    # make some commands less deadly
    rm = "trash";
    cp = "cp -i";
    mv = "mv -i";

    cwd = "pwd | pbcopy";
    ".." = "cd ..";
    "..2" = "cd ../../";
    "..3" = "cd ../../../";
    "~" = "cd ~";
  };
}
