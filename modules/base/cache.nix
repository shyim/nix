{ pkgs, lib, ... }:

{
  nix = {
    binaryCaches = [
      "https://cache.nixos.org"
      "https://s3-minio-shyim.cloud.okteto.net/nix"
    ];
    binaryCachePublicKeys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "shyim.cachix.org-1:RVZnQibwN/wRloBNV0EJjr/guF688VaHI37VFLIgYgI="
    ];
  };
}
