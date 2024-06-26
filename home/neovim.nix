{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.neovim-flake.homeManagerModules.default
  ];

  programs.neovim-flake.enable = true;

  programs.neovim-flake.settings = {
    vim = {
      viAlias = false;
      vimAlias = true;
      enableEditorconfig = true;
    };

    vim.visuals.enable = true;

    vim.visuals = {
      nvimWebDevicons.enable = true;
      smoothScroll.enable = true;

      cursorline.enable = true;
      cursorline.lineTimeout = 0;
    };

    vim.theme.enable = true;
    vim.theme = {
      name = "oxocarbon";
      style = "dark";
      transparent = true;
    };

    vim.autopairs.enable = true;

    vim.treesitter.context.enable = true;
  };
}
