{ config, lib, pkgs, ... }:{

 services.xserver = {
   enable = true;
   windowManager.i3.enable = true;
 };
 
 environment.systemPackages = [ pkgs.xinit pkgs.xauth ];

}

