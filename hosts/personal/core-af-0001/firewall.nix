{ config, pkgs, ... }:{
  networking.firewall.enable = true;

  networking.firewall.allowedTCPPorts = [ 
    22            # SSH
    47984 47990   # Sunshine
    48010         # Sunshine
    22000         # Syncthing
    21115 21116 21117 21118 21119 # RustDesk
    53317 # LocalSend
  ];

  networking.firewall.allowedUDPPorts = [ 
    47998 47999 48000 48002 48010 # Sunshine
    21027         # Syncthing
    21116         # RustDesk
    53317 # LocalSend
  ];
}

