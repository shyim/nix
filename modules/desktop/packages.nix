{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    kbfs
    keybase
    keybase-gui
    google-chrome
    firefox
    vscode
    php74
    php74Packages.composer
    nodejs-14_x	
    gnupg
    insomnia
    xclip
    gnumake
    shellcheck
    fzf
    shyim.phpstorm
    shyim.swdc
    xorg.xhost
    spotify
    discord
  ];

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    source-sans-pro
  ];
}
