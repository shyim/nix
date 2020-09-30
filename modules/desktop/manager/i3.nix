{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      windowManager = {
        i3 = { 
          enable = true;
          package = pkgs.i3-gaps;
        };
      };

      displayManager = {
        defaultSession = "none+i3";
      };
      desktopManager = {
        xterm = { enable = false; };
      };
    };
    gnome3 = { gnome-keyring = { enable = true; }; };
  };

  fonts.fonts = with pkgs; [ dejavu_fonts ];

  environment.systemPackages = with pkgs; [
    (polybar.override {
      i3Support = true;
      pulseSupport = true;
      mpdSupport = true;
    })
    rofi
    arandr
    pavucontrol
    xfce.thunar
    playerctl
    blueman
    feh
    networkmanagerapplet
    kitty
    escrotum
    clipit
  ];
}
