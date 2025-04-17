# ❄️ NixOS Config Reborn

This repository provides a fully modular NixOS + Home Manager setup.

## 🛠️ Installation & Usage

1. **Install NixOS** by following the official guide citeturn0search0.
2. **Clone this repository**:
   ```bash
   git clone https://github.com/thomasalmeida/nixos-config.git
   cd nixos-config
   ```
3. **Set up your host configuration**:
   ```bash
   cd hosts
   cp -r default <your_hostname>
   cd <your_hostname>
   ```
   Replace `xxx` with the example host directory.
4. **Copy your hardware configuration**:
   ```bash
   cp /etc/nixos/hardware-configuration.nix ./
   ```
5. **Adjust your hostname and user**:
   - In `hosts/<your_hostname>/configuration.nix`, set `networking.hostName`.
   - In `flake.nix`, update:
     ```nix
     hosts = [ { hostname = "<your_hostname>"; stateVersion = "24.11"; } ];
     user  = "<your_user>";
     ```
   Ensure Home Manager’s branch matches Nixpkgs (e.g., `release-24.11`).
6. **Apply the configuration**:
   ```bash
   # As root:
   nixos-rebuild switch --flake .#<your_hostname>

   # As your user:
   home-manager switch --flake .#<your_user>
   ```
   On a fresh install, replace `nixos-rebuild switch` with `nixos-install --flake .#<your_hostname>`.
7. **Reboot** to activate Fish, Kitty, Dunst, and the password-required login.
