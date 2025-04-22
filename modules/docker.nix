{ config, pkgs, lib, user, ... }: {
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
  ];

  virtualisation.docker.enable = true;

  # Allow your user to run Docker without sudo
  users.users.${user}.extraGroups = lib.mkForce (config.users.users.${user}.extraGroups ++ [ "docker" ]);
}
