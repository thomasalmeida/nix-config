{ pkgs, ... }: {
  # Set Fish as the default login shell
  home.shell = pkgs.fish;

  programs.fish = {
    enable = true;
    # Enable completions and syntax highlighting by default
    completions = true;
    history = {
      save = true;
      path = "${config.xdg.dataHome}/fish/history";
    };
    aliases = {
      gs   = "git status";
      ga   = "git add";
      gc   = "git commit";
      gp   = "git push";
      ".." = "cd ..";
      zed  = "zeditor";
      nv   = "nvim";
    };
  };
}
