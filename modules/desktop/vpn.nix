{ config, pkgs, ... }:

{
    networking.wireguard.interfaces = {
        wg0 = {
            ips = [ "10.10.0.2/24" ];
            privateKeyFile = "/home/shyim/.config/wireguard/private_key";

            peers = [
                {
                    publicKey = "cujM0Bf/zKM3K/KzrThO6WyBs/AfAJNcJymy7/nNljA=";
                    endpoint = "flareon.shyim.de:51820";
                    allowedIPs = [ "10.10.0.1" ];
                }
            ];
        };
    };
}