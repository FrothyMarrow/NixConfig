{pkgs, ...}: {
  home.packages = with pkgs; [
    (discord.override {
      withVencord = true;
    })
  ];

  xdg.configFile."Vencord/settings/quickCss.css".source = ./quickCss.css;
}
