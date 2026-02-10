{
  system.defaults.NSGlobalDomain = {
    AppleInterfaceStyle = "Dark";
    AppleShowAllExtensions = true;
    AppleMetricUnits = 1;
    # proven way to live longer
    InitialKeyRepeat = 14;
    KeyRepeat = 1;
  };

  system.defaults.dock = {
    show-recents = false;
    mru-spaces = false;
    launchanim = true;
    autohide = true;
    minimize-to-application = true;
    tilesize = 46;
    autohide-delay = 0.0;
    autohide-time-modifier = 0.0;
    mineffect = "genie";
    orientation = "bottom";
  };

  system.defaults.menuExtraClock = {
    ShowSeconds = true;
    ShowDayOfWeek = true;
    ShowDayOfMonth = true;
    ShowAMPM = true;
    ShowDate = 0;
  };

  system.defaults.finder = {
    FXPreferredViewStyle = "clmv";
    ShowPathbar = true;
  };

  system.defaults.trackpad = {
    Clicking = true;
    Dragging = true;
  };

  system.defaults.screencapture = {
    location = "~/Pictures/Screenshots";
    type = "png";
  };

  system.defaults.SoftwareUpdate = {
    AutomaticallyInstallMacOSUpdates = false;
  };

  security.pam.services.sudo_local.touchIdAuth = true;
}
