{ config, lib, pkgs, ... }:{

 programs.gamemode.enable = true;

 environment.systemPackages = [
   pkgs.lutris
   pkgs.umu-launcher
   pkgs.gamescope
 ];

}

