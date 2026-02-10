{
  pkgs,
  lib,
  ...
}:
{
  programs.zsh.enable = true;

  programs.zsh = {
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      bindkey -v
    '';
  };

  programs.zsh.sessionVariables = {
    EDITOR = "nvim";
    TERM = "xterm-256color";
  };

  # aliases
  programs.zsh.shellAliases = {
    ls = "${lib.getExe pkgs.eza}";
    la = "${lib.getExe pkgs.eza} -a";
    ll = "${lib.getExe pkgs.eza} -la";
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
