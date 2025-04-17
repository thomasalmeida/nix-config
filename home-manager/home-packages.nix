{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    brave
    firefox
    imv
    mpv
    obsidian
    pavucontrol
    zed

    # CLI utils
    bc
    bottom
    brightnessctl
    cliphist
    dunst
    ffmpeg
    ffmpegthumbnailer
    fzf
    git
    grimblast
    htop
    hyprpicker
    kitty
    mediainfo
    microfetch
    playerctl
    ripgrep
    silicon
    udisks
    ueberzugpp
    unzip
    w3m
    wget
    wl-clipboard
    wtype
    zip

    # Coding stuff
    lazydocker
    openjdk23
    go_1_22
    nodejs_23
    python311
    ruby_3_4
    rustc

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    bemoji
    nix-prefetch-scripts
  ];
}
