{
  # nix-daemon
  services.nix-daemon.enable = true;

  # yabai
  services.yabai.enable = true;
  services.yabai.config = {
    window_border = "on";
    window_blur = "on";
    # let amethyst handle window management
    layout = "float";
    active_window_border_color = "0xffea76cb";
    normal_window_border_color = "0x00ffffff";
  };
}
