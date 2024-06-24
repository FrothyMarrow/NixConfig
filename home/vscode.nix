{pkgs, ...}: {
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      asvetliakov.vscode-neovim
      catppuccin.catppuccin-vsc-icons
      dbaeumer.vscode-eslint
      esbenp.prettier-vscode
      github.copilot
      jnoortheen.nix-ide
      kamadorueda.alejandra
      llvm-vs-code-extensions.vscode-clangd
      mkhl.direnv
      ms-python.debugpy
      ms-python.python
      ms-toolsai.jupyter
      ms-toolsai.jupyter-keymap
      ms-toolsai.jupyter-renderers
      ms-toolsai.vscode-jupyter-cell-tags
      ms-toolsai.vscode-jupyter-slideshow
      nvarner.typst-lsp
      rust-lang.rust-analyzer
      twxs.cmake
      usernamehw.errorlens
      vadimcn.vscode-lldb
      xaver.clang-format
      ziglang.vscode-zig
      leonardssh.vscord
      frothymarrow.alice-carbon
    ];

    userSettings = {
      "window.zoomLevel" = 1;
      "editor.bracketPairColorization.enabled" = false;
      "workbench.iconTheme" = "catppuccin-mocha";
      "editor.fontSize" = 13;
      "extensions.experimental.affinity" = {
        "asvetliakov.vscode-neovim" = 1;
      };
      "terminal.integrated.fontSize" = 14;
      "nix.serverPath" = "nil";
      "vscode-neovim.neovimExecutablePaths.darwin" = "/opt/homebrew/bin/nvim";
      "nix.formatterPath" = [
        "nix"
        "fmt"
        "--"
        "-"
      ];
      "workbench.startupEditor" = "none";
      "editor.renderWhitespace" = "boundary";
      "direnv.restart.automatic" = true;
      "editor.formatOnSave" = true;
      "editor.semanticHighlighting.enabled" = true;
      "terminal.integrated.minimumContrastRatio" = 1;
      "window.titleBarStyle" = "custom";
      "editor.links" = false;
      "alejandra.program" = "alejandra";
      "extensions.autoUpdate" = false;
      "github.copilot.enable" = {
        "*" = true;
        "plaintext" = true;
        "markdown" = true;
        "scminput" = false;
        "nix" = true;
        "python" = true;
        "c" = true;
      };
      "errorLens.enabled" = true;
      "errorLens.enabledDiagnosticLevels" = [
        "error"
        "warning"
        "info"
        "hint"
      ];
      "[cpp]" = {
        "editor.defaultFormatter" = "xaver.clang-format";
      };
      "prettier.requireConfig" = true;
      "[javascript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "nix.enableLanguageServer" = true;
      "editor.minimap.enabled" = false;
      "editor.fontFamily" = "Iosevka Nerd Font Mono";
      "git.openRepositoryInParentFolders" = "always";
      "editor.accessibilitySupport" = "off";
      "editor.guides.indentation" = false;
      "editor.rulers" = [
        80
      ];
      "zig.path" = "zig";
      "zig.zls.path" = "zls";
      "zig.initialSetupDone" = true;
      "workbench.editorAssociations" = {
        "*.pdf" = "default";
      };
      "editor.fontLigatures" = false;
      "workbench.colorTheme" = "alice-carbon";
      "vscord.behaviour.suppressNotifications" = true;
      "update.mode" = "none";
      "telemetry.telemetryLevel" = "off";
      "extensions.ignoreRecommendations" = true;
    };
  };
}
