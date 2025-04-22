## Quick Install

Run this single line in any shell:

```bash
nix shell github:thomasalmeida/nixos-config --command "sudo nixos-rebuild switch --flake .#default && home-manager switch --flake .#tom"
```

### Included

- **Shell & UI**: Fish, Kitty, Zellij, Dunst, Waybar, Wofi, Hyprland, Starship
- **Editor & LSP**: Neovim + servers for JS/TS, Rust, Go, Ruby, Python, Lua
- **Containers**: Docker & Docker Compose
- **Apps**: Zed, Vim, Gedit

### Customize

1. Edit `flake.nix` → `hosts` or `user`
2. Re-run the Quick Install command
