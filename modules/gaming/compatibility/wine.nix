{ config, lib, pkgs, ... }:{
 
 environment.systemPackages = [
   pkgs.wine
   pkgs.wine64
   pkgs.winetricks
 ];

}

