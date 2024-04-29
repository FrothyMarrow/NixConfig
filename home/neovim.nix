{pkgs, ...}: {
  programs.neovim-flake.enable = true;

  programs.neovim-flake.settings = {
    vim = {
      viAlias = false;
      vimAlias = true;
      enableEditorconfig = true;

      treesitter.grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        # Without lua parser it throws 'query: invalid node type' errors in noice
        lua
      ];
    };

    vim.visuals.enable = true;
    vim.visuals = {
      nvimWebDevicons.enable = true;
      smoothScroll.enable = true;

      cursorline.enable = true;
      cursorline.lineTimeout = 0;
    };

    vim.ui = {
      breadcrumbs.enable = true;
      modes-nvim.enable = false;
    };

    vim.theme.enable = true;
    vim.theme = {
      name = "catppuccin";
      style = "mocha";
      transparent = true;
    };

    vim.statusline.lualine.enable = true;
    vim.statusline.lualine = {
      theme = "catppuccin";
      globalStatus = true;
    };

    vim.filetree = {
      nvimTree.enable = true;
      nvimTree.mappings.toggle = "<C-n>";
    };

    vim.autopairs.enable = true;

    vim.telescope.enable = true;

    vim.treesitter.context.enable = true;

    vim.tabline.nvimBufferline.enable = true;

    vim.ui.borders.enable = true;
  };
}
