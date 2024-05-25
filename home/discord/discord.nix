{pkgs, ...}: {
  home.packages = with pkgs; [
    (discord.override {
      withVencord = true;
    })
  ];

  xdg.enable = true;
  xdg.configFile."Vencord/settings/quickCss.css".source = ./quickCss.css;
}
