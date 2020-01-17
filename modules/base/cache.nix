{ pkgs, lib, ... }:

{
  nix = {
    binaryCaches = [ "https://cache.nixos.org" "s3://nix?scheme=https&endpoint=s3-minio-shyim.cloud.okteto.net" ];
    binaryCachePublicKeys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "shyim.cachix.org-1:RVZnQibwN/wRloBNV0EJjr/guF688VaHI37VFLIgYgI="
    ];
  };
}
