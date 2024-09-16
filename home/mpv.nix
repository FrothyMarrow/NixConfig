{
  pkgs,
  lib,
  ...
}: {
  programs.mpv = {
    enable = true;
    package = pkgs.mpv-unwrapped.wrapper {mpv = pkgs.mpv-unwrapped.override {vulkanSupport = true;};};

    config = {
      vo = "gpu-next";
      gpu-api = "vulkan";
      hwdec = "auto";
      vulkan-async-compute = "yes";
      vulkan-async-transfer = "yes";
      vulkan-queue-count = 1;
      vd-lavc-dr = "yes";

      msg-color = "yes";
      term-osd-bar = "yes";
      force-window = "immediate";
      cursor-autohide = "1000";
      geometry = "3840x2160";
      fullscreen = "yes";

      display-fps-override = 60;
      video-sync = "display-resample";
      interpolation = "yes";
      tscale = "oversample";

      sub-scale = 0.5;
    };

    bindings = let
      concatShaders = shaders: lib.concatStringsSep ":" (lib.map (s: "${pkgs.anime4k}/${s}.glsl") shaders);
    in {
      "CTRL+1" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Restore_CNN_M"
            "Anime4K_Upscale_CNN_x2_M"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode A (Fast)"'';
      "CTRL+2" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Restore_CNN_Soft_M"
            "Anime4K_Upscale_CNN_x2_M"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode B (Fast)"'';
      "CTRL+3" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Upscale_Denoise_CNN_x2_M"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode C (Fast)"'';
      "CTRL+4" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Restore_CNN_M"
            "Anime4K_Upscale_CNN_x2_M"
            "Anime4K_Restore_CNN_S"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode A+A (Fast)"'';
      "CTRL+5" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Restore_CNN_Soft_M"
            "Anime4K_Upscale_CNN_x2_M"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Restore_CNN_Soft_S"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode B+B (Fast)"'';
      "CTRL+6" = ''no-osd change-list glsl-shaders set ${
          concatShaders [
            "Anime4K_Clamp_Highlights"
            "Anime4K_Upscale_Denoise_CNN_x2_M"
            "Anime4K_AutoDownscalePre_x2"
            "Anime4K_AutoDownscalePre_x4"
            "Anime4K_Restore_CNN_S"
            "Anime4K_Upscale_CNN_x2_S"
          ]
        }; show-text "Anime4K: Mode C+A (Fast)"'';
      "CTRL+0" = ''no-osd change-list glsl-shaders clr ""; show-text "GLSL shaders cleared"'';
    };
  };
}
