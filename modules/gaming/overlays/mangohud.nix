{ config, lib, pkgs, ... }:{
 
 environment.systemPackages = [
   pkgs.mangohud
   pkgs.mangojuice
 ];

}

