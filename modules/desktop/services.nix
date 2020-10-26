{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
    extraOptions = "--registry-mirror=https://mirror.gcr.io";
  };
  virtualisation.podman.enable = true;
}
