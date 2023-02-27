{ config, pkgs, ... }:

{
  imports = [ ./xserver.nix ];
  services = {
    openvpn.servers = {
      protonvpn = {
        config = ''
                      config /root/nixos/openvpn/node-uk-09.protonvpn.net.udp.ovpn
                      auth-user-pass /root/nixos/openvpn/pass.txt
          	    up ${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf
          	    down ${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf
        '';
        autoStart = true;
      };
    };

    flatpak.enable = true;
  };
}
