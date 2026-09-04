{ config, pkgs, ... }:{
  networking.firewall.enable = true;
  networking.firewall.logRefusedConnections = true;
  networking.firewall.allowPing = true;

  networking.firewall.allowedTCPPorts = [
    22      # ssh
    47984   # sunshine (handshake)
    47989   # sunshine (api)
    47990   # sunshine (web ui)
    48010   # sunshine (rtsp)
    53317   # localsend
    22000   # syncthing (sync)
    21115   # rustdesk
    21116   # rustdesk
    21117   # rustdesk (relay)
    21118   # rustdesk
    21119   # rustdesk
  ];

  networking.firewall.allowedUDPPorts = [
    47998   # sunshine (video)
    47999   # sunshine (control)
    48000   # sunshine (audio)
    48002   # sunshine (misc)
    48010   # sunshine
    53317   # localsend (discovery)
    21027   # syncthing (discovery)
    21116   # rustdesk
  ];
}
