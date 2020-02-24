{ config, pkgs, ... }:

{
  imports =
    [ ./hardware.nix ./packages.nix ./users.nix ./services.nix ./yubikey.nix ];

  networking.extraHosts = ''
    127.0.0.1 mysql
  '';
}
