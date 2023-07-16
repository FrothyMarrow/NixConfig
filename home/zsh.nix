{
  programs.zsh.enable = true;

  programs.zsh = {
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
  };

  # aliases
  programs.zsh.shellAliases = {
    darwinsw = "darwin-rebuild switch --flake ~/.config/NixConfig";

    ls = "lsd";
    la = "lsd -a";
    ll = "lsd -la";
    tree = "tree -aC";

    # make some commands less deadly
    rm = "rm -i";
    cp = "cp -i";
    mv = "mv -i";

    cwd = "pwd | pbcopy";
    ".." = "cd ..";
    "..2" = "cd ../../";
    "..3" = "cd ../../../";
    "~" = "cd ~";
  };
}
