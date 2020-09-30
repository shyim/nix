{ config, lib, pkgs, ... }:

let
    php = pkgs.php74.buildEnv { extraConfig = "memory_limit = 2G"; };
  in 
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    docker-compose
    google-chrome
    firefox-devedition-bin
    vscode
    php
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
    go
    appimage-run
  ];

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    source-sans-pro
  ];
}
