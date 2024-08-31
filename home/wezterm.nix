{inputs, ...}: {
  programs.wezterm.enable = true;

  programs.wezterm.extraConfig = ''
    local wezterm = require 'wezterm'
    local config = {}
    config.font = wezterm.font 'Iosevka Nerd Font Mono'
    config.font_size = 17
    config.color_scheme_dirs = { '${inputs.wezterm-oxocarbon}' }
    config.color_scheme = 'Oxocarbon Dark'
    config.front_end = "WebGpu"
    config.window_decorations = 'RESIZE'
    config.window_background_opacity = 0.96
    config.macos_window_background_blur = 50
    config.enable_tab_bar = false
    config.window_close_confirmation = 'NeverPrompt'
    return config
  '';
}
