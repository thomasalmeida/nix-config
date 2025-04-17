{ pkgs, ... }: {
  programs.dunst = {
    enable = true;

    settings = {
      theme = "gruvbox-dark";
      geometry = "300x5-10+40";
      font = "JetBrains Mono 11";
      format = "%s";
    };
  };
}
