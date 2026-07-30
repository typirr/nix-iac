{ config, pkgs, ... }:{
 environment.systemPackages = [ pkgs.qemu_full ];
}
