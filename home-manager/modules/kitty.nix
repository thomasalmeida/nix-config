{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    settings = {
      font_size = 13.0;
      font_family = "JetBrains Mono";
      opacity = 0.85;
      background = "#1d2021";
      cursor = "Beam";
      scrollback_lines = 10000;
    };
  };
}
