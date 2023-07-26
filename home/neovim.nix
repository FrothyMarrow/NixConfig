{pkgs, ...}: {
  programs.neovim-flake.enable = true;

  programs.neovim-flake.settings = {
    vim = {
      viAlias = false;
      vimAlias = true;
      startPlugins = with pkgs; [vimPlugins.friendly-snippets];
      enableEditorconfig = true;
    };

    vim.visuals.enable = true;
    vim.visuals = {
      nvimWebDevicons.enable = true;
      cellularAutomaton.enable = true;
      fidget-nvim.enable = true;
      smoothScroll.enable = true;

      cursorWordline.enable = true;
      cursorWordline.lineTimeout = 0;
    };

    vim.ui = {
      noice.enable = true;
      colorizer.enable = true;
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
      nvimTreeLua.enable = true;
      nvimTreeLua.view.adaptiveSize = false;
    };

    vim.lsp = {
      formatOnSave = true;
      lspkind.enable = false;
      lightbulb.enable = true;
      lspsaga.enable = false;
      nvimCodeActionMenu.enable = true;
      trouble.enable = true;
      lspSignature.enable = true;
    };

    vim.languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      nix.enable = true;
      html.enable = true;
      clang = {
        enable = true;
        lsp.server = "clangd";
      };
      ts.enable = true;
    };

    vim.binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    vim.presence.presence-nvim.enable = true;
    vim.presence.presence-nvim = {
      auto_update = true;
      enable_line_number = true;
      show_time = true;
      image_text = "The Text Editor";
      main_image = "neovim";
      client_id = "793271441293967371";
      rich_presence.editing_text = "Editing %s";
    };

    vim.git.enable = true;
    vim.git = {
      gitsigns.enable = true;
      gitsigns.codeActions = false;
    };

    vim.autopairs.enable = true;

    vim.telescope.enable = true;

    vim.comments.comment-nvim.enable = true;

    vim.treesitter.context.enable = true;

    vim.tabline.nvimBufferline.enable = true;

    vim.terminal.toggleterm.enable = true;

    vim.ui.borders.enable = true;

    vim.autocomplete.enable = true;
    vim.autocomplete.type = "nvim-cmp";
  };
}
