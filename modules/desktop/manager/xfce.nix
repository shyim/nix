{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager = {
      default = "xfce";
      xterm.enable = false;
      xfce.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    arc-theme
    escrotum
    i3lock
    rofi
  ];
}
