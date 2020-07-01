{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    awscli
    s3cmd
    openvpn
    ansible
    go-jira
    zoom-us
    chromium
    kubectl
  ];
}
