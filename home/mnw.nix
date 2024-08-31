{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.mnw.homeManagerModules.default
  ];

  programs.mnw = {
    enable = true;
    neovim = pkgs.neovim-unwrapped;

    appName = "nvim";
    viAlias = false;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      auto-pairs
      oxocarbon-nvim
    ];

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
