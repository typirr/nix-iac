{ config, pkgs, lib, venCachyKernel, ... }:{

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "core-af-0001";
  
  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;

  boot.loader.systemd-boot.enable = true;
  
  boot.kernelModules = [ "ntsync" ];

  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

  programs.dconf.enable = true;
  
  services.xserver.xkb.layout = "us,eg";

  services.xserver.xkb.options = "grp:alt_shift_toggle";
  
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  system.stateVersion = "26.05";
}

