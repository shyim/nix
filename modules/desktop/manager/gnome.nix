{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager = {
      gdm = {
        enable = true;
        wayland = false;
      };
    };
    desktopManager = { gnome3 = { enable = true; }; };
  };

  services.dbus.packages = with pkgs; [ gnome3.dconf gnome2.GConf ];
}
