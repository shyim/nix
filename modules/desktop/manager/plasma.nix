{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager = {
      defaultSession = "plasma5";
      sddm = {
        enable = true;
        enableHidpi = true;
        autoLogin = {
          enable = true;
          user = "shyim";
        };
      };
    };
    desktopManager = { plasma5 = { enable = true; }; };
    windowManager = { i3 = { enable = true; }; };
  };
}
