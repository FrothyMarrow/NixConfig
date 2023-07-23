{
  system.defaults.NSGlobalDomain = {
    AppleInterfaceStyle = "Dark";
    AppleShowAllExtensions = true;
    AppleMetricUnits = 1;
    # proven way to live longer
    InitialKeyRepeat = 14;
    KeyRepeat = 1;
  };

  # dock and mission control
  system.defaults.dock = {
    show-recents = false;
    mru-spaces = false;
    launchanim = true;
    autohide = true;
    minimize-to-application = true;
    tilesize = 46;
    mineffect = "genie";
    orientation = "bottom";
  };

  # menu clock
  system.defaults.menuExtraClock = {
    ShowSeconds = true;
    ShowDayOfWeek = true;
    ShowDayOfMonth = true;
    ShowAMPM = true;
    ShowDate = 0;
  };

  # finder
  system.defaults.finder = {
    FXPreferredViewStyle = "clmv";
    ShowPathbar = true;
  };

  # trackpad
  system.defaults.trackpad = {
    Clicking = true;
    Dragging = true;
  };

  # screenshots
  system.defaults.screencapture = {
    location = "~/Pictures/Screenshots";
    type = "png";
  };

  # system updates
  system.defaults.SoftwareUpdate = {
    AutomaticallyInstallMacOSUpdates = false;
  };
}
