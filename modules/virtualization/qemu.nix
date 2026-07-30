{ config, pkgs, ... }:{
 virtualisation.libvirtd = {
   enable = true;
   qemu = {
     package = qemu-full;
   };
 };
}
