{ config, pkgs, ... }:

let
  nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec -a "$0" "$@"
  '';
in
{
  imports = [
    ../modules/base
    ../modules/desktop
    ../modules/desktop/notebook.nix
    ../modules/work
    ../modules/desktop/manager/i3.nix
  ];

  fileSystems."/".options = [ "noatime" "nodiratime" "discard" ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.gfxmodeEfi = "1024x768";

  networking.hostName = "aki";
  console.keyMap = "us";
  services.xserver.layout = "us";
  services.xserver.xkbVariant = "altgr-intl";

  environment.systemPackages = [ nvidia-offload ];
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia.prime = {
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
    sync.enable = true;
  };

  boot.kernelParams = [ "acpi_rev_override" ];
  boot.extraModprobeConfig = ''
options hid_apple fnmode=2
'';

  programs.adb.enable = true;
  services.fwupd.enable = true;
  

  hardware.cpu.intel.updateMicrocode = true;

  services.dnsmasq.enable = true;
  services.dnsmasq.extraConfig = "address=/sw.shop/127.0.0.1";
  services.dnsmasq.servers = ["172.16.0.123" "172.16.0.124"];
  networking.resolvconf.useLocalResolver = true;
}
