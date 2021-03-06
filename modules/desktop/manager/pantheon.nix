{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager = {
        lightdm = {
          greeters.pantheon.enable = true;
        };
      };
      desktopManager = { pantheon.enable = true; };
    };

    gnome3 = { gnome-keyring = { enable = pkgs.lib.mkForce false; }; };

    pantheon.contractor.enable = true;
  };

  environment.systemPackages = with pkgs; [ gtk-engine-murrine pantheon.elementary-calendar ];

  environment.pantheon.excludePackages = [
    pkgs.pantheon.elementary-camera
    pkgs.pantheon.elementary-calculator
    pkgs.pantheon.elementary-code
    pkgs.pantheon.elementary-videos
  ];
}
