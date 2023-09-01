{
  programs.alacritty.enable = true;

  # window
  programs.alacritty.settings.window = {
    decorations = "buttonless";
    opacity = 0.75;
    padding.x = 10;
    padding.y = 10;
  };

  # font
  programs.alacritty.settings.font = {
    size = 17;
    normal = {
      family = "Iosevka Nerd Font Mono";
      style = "Regular";
    };

    bold = {
      family = "Iosevka Nerd Font Mono";
      style = "Bold";
    };

    italic = {
      family = "Iosevka Nerd Font Mono";
      style = "Italic";
    };
  };

  # colors
  programs.alacritty.settings.colors = {
    primary = {
      background = "#1E1E2E";
      foreground = "#CDD6F4";
      dim_foreground = "#CDD6F4";
      bright_foreground = "#CDD6F4";
    };

    cursor = {
      text = "#1E1E2E";
      cursor = "#F5E0DC";
    };

    vi_mode_cursor = {
      text = "#1E1E2E";
      cursor = "#B4BEFE";
    };

    search.matches = {
      foreground = "#1E1E2E";
      background = "#A6ADC8";
    };

    search.focused_match = {
      foreground = "#1E1E2E";
      background = "#A6E3A1";
    };

    search.footer_bar = {
      foreground = "#1E1E2E";
      background = "#A6ADC8";
    };

    hints.start = {
      foreground = "#1E1E2E";
      background = "#F9E2AF";
    };

    hints.end = {
      foreground = "#1E1E2E";
      background = "#A6ADC8";
    };

    selection = {
      text = "#1E1E2E";
      background = "#F5E0DC";
    };

    normal = {
      black = "#45475A";
      red = "#F38BA8";
      green = "#A6E3A1";
      yellow = "#F9E2AF";
      blue = "#89B4FA";
      magenta = "#F5C2E7";
      cyan = "#94E2D5";
      white = "#BAC2DE";
    };

    bright = {
      black = "#585B70";
      red = "#F38BA8";
      green = "#A6E3A1";
      yellow = "#F9E2AF";
      blue = "#89B4FA";
      magenta = "#F5C2E7";
      cyan = "#94E2D5";
      white = "#A6ADC8";
    };

    dim = {
      black = "#45475A";
      red = "#F38BA8";
      green = "#A6E3A1";
      yellow = "#F9E2AF";
      blue = "#89B4FA";
      magenta = "#F5C2E7";
      cyan = "#94E2D5";
      white = "#BAC2DE";
    };

    indexed_colors = [
      {
        index = 16;
        color = "#FAB387";
      }
      {
        index = 17;
        color = "#F5E0DC";
      }
    ];
  };

  # alt to opt keymappings
  programs.alacritty.settings.key_bindings = [
    {
      key = "Key0";
      mods = "Alt";
      chars = "\\x1b0";
    }
    {
      key = "Key1";
      mods = "Alt";
      chars = "\\x1b1";
    }
    {
      key = "Key2";
      mods = "Alt";
      chars = "\\x1b2";
    }
    {
      key = "Key3";
      mods = "Alt";
      chars = "\\x1b3";
    }
    {
      key = "Key4";
      mods = "Alt";
      chars = "\\x1b4";
    }
    {
      key = "Key5";
      mods = "Alt";
      chars = "\\x1b5";
    }
    {
      key = "Key6";
      mods = "Alt";
      chars = "\\x1b6";
    }
    {
      key = "Key7";
      mods = "Alt";
      chars = "\\x1b7";
    }
    {
      key = "Key8";
      mods = "Alt";
      chars = "\\x1b8";
    }
    {
      key = "Key9";
      mods = "Alt";
      chars = "\\x1b9";
    }
  ];
}
