{ config, ... }:{
  networking.firewall.enable = true;
  networking.firewall.logRefusedConnections = true;
  networking.firewall.allowPing = true;

  networking.firewall.allowedTCPPorts = [
    22 # ssh
    47984 47989 47990 48010 # sunshine
    53317   # localsend
    22000 22076 # syncthing
    21115 21116 21117 21118 21119 # rustdesk
  ];

  networking.firewall.allowedUDPPorts = [
    47998 47999 48000 48002 48010 # sunshine
    53317   # localsend
    21027   # syncthing
    21116   # rustdesk
  ];
}
