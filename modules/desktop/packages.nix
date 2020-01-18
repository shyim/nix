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
    thunderbird
    vscode
    php74
    php74Packages.composer
    nodejs-13_x
    gnupg
    insomnia
    xclip
    gnumake
    terraform
    ffsend
    shellcheck
    fzf
    tldr
    nixfmt
    kubectl
    shyim.phpstorm
    shyim.swdc
    shyim.ncspot
  ];

  console.font = lib.mkForce "Fire Code";

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    source-sans-pro
    fira-code
  ];
}
