{ config, pkgs, ... }:{
 security.polkit = {
   enable = true;
 };
 environment.systemPackages = [ pkgs.soteria ];
}
