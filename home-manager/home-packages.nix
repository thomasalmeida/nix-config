{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    brave
    firefox
    gedit
    imv
    kitty
    mpv
    obsidian
    zed

    # CLI utils
    bc
    bottom
    brightnessctl
    cliphist
    curl
    dunst
    fish
    ffmpeg
    ffmpegthumbnailer
    fzf
    git
    grimblast
    htop
    hyprpicker
    mediainfo
    microfetch
    pavucontrol
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

    # Coding tools
    docker-cli
    docker-compose
    lazydocker
    go_1_22
    nodejs_23
    python311
    ruby_3_4
    rustc
    vim
    neovim
    zellij

    # Fonts & theming
    bemoji
    nix-prefetch-scripts
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })

    # VMs and emulation
    gcc
    qemu
  ];
}
