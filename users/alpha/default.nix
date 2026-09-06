{ config, lib, pkgs, ... }:{
  users.users.alpha = {
    isNormalUser = true;
    description = "The first user which will be used";
    shell = pkgs.bash;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
      "input"
    ];
  };

}
