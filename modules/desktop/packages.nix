{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    google-chrome
    firefox
    vscode
    php74
    shyim.composer2
    nodejs-14_x	
    gnupg
    insomnia
    xclip
    gnumake
    shellcheck
    fzf
    shyim.phpstorm
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
