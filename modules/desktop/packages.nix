{ config, lib, pkgs, ... }:

let
  unstable = import <nixos-unstable> {};

in {
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
    unstable.php74
    unstable.php74Packages.composer
    nodejs
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
