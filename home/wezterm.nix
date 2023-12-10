{
  programs.wezterm.enable = true;

  programs.wezterm.extraConfig = ''
    local wezterm = require 'wezterm'
    local config = {}
    config.font = wezterm.font 'Iosevka Nerd Font Mono'
    config.font_size = 17
    config.color_scheme = 'Catppuccin Mocha'
    config.window_decorations = 'RESIZE'
    config.window_background_opacity = 0.8
    config.macos_window_background_blur = 20
    config.enable_tab_bar = false
    config.max_fps = 120
    config.window_close_confirmation = 'NeverPrompt'
    return config
  '';
}