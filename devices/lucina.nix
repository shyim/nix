{ config, pkgs, ... }:

{
  imports =
    [ ../modules/base ../modules/desktop ../modules/desktop/manager/i3.nix ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  networking.hostName = "lucina";
  console.keyMap = "us";
  services.xserver.layout = "us";
  services.xserver.xkbVariant = "altgr-intl";

  environment.systemPackages = with pkgs; [ discord ];
}
