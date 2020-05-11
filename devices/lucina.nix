{ config, pkgs, ... }:

{
  imports =
    [ ../modules/base ../modules/desktop ../modules/desktop/manager/i3.nix ../modules/desktop/vpn.nix ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "lucina";
  console.keyMap = "de";
  services.xserver.layout = "de";

  environment.systemPackages = with pkgs; [ discord ];
}
