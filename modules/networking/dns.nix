{ config, ... }:{

  networking.nameservers = [ "9.9.9.9" "149.112.112.112" ];
  networking.dhcpcd.extraConfig = "nohook resolv.conf";
  services.resolved = {
    enable = true;
    settings = {
      Resolve = {
        DNSSEC = true;
        FallbackDNS = [ "1.1.1.1" ];
      };
    };
  };
}
