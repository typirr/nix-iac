{ config, lib, pkgs, ... }:{
  users.users.core = {
    isNormalUser = true;
    description = "The Universal Maintenance User (UMU)";
    shell = pkgs.bash;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

}
