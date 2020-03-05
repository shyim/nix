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
    unstable.nodejs-13_x
    gnupg
    insomnia
    xclip
    gnumake
    terraform
    ffsend
    shellcheck
    fzf
    tldr
    kubectl
    shyim.phpstorm
    shyim.swdc
    #shyim.ncspot
    xorg.xhost
  ];

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    source-sans-pro
  ];
}
