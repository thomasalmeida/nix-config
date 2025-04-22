{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    extraSessions = {
      default = {
        layout = pkgs.writeText "default-layout.kdl" ''
          // simple single-pane session
          [[pane]]
        '';
      };
    };
  };
}
