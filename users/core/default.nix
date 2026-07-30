{ config, lib, pkgs, ... }:{

 #sops.secrets."users/core/passwordHash" = {
 # neededForUsers = true;
 #};


  users.users.core = {
    isNormalUser = true;

    description = "The Universal Maintenance User (UMU)";

    #hashedPasswordFile = config.sops.secrets."users/core/password".path;
    hashedPassword = "$y$j9T$CqHgpjJ9ztOf1Vu/VTYLE.$rTgw0jcC6591CevCrKuglLLyOJ3fwzupZAjGUb4hFy8";
    shell = pkgs.bash;

    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

}
