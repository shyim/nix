{ config, pkgs, ... }:

{
  services = {
    openssh = {
      enable = true;
      permitRootLogin = "yes";
    };
  };
}
