{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.mnw.homeManagerModules.default
  ];

  programs.mnw = {
    enable = true;
    neovim = pkgs.neovim-unwrapped;

    appName = "nvim";

    plugins = {
      start = [
        pkgs.vimPlugins.auto-pairs
        pkgs.vimPlugins.oxocarbon-nvim
      ];
    };

    initLua = ''
      require('oxocarbon')
      vim.opt.background = "dark"
      vim.cmd.colorscheme = "oxocarbon"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    '';
  };
}
