{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };
  virtualisation.podman.enable = true;
}
