{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      windowManager = {
        openbox = { 
          enable = true;
        };
      };

      displayManager = {
        defaultSession = "none+openbox";
        lightdm = {
          autoLogin = {
            enable = true;
            user = "shyim";
          };
        };
      };
      desktopManager = {
        xterm = { enable = false; };
      };
    };

    gnome3 = { gnome-keyring = { enable = true; }; };
  };

  fonts.fonts = with pkgs; [ dejavu_fonts ];

  environment.systemPackages = with pkgs; [
    kitty
  ];
}
