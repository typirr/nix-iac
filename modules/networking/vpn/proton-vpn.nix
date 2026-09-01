{ pkgs, ... }:{
  environment.systemPackages = [
    pkgs.proton-vpn-gui
  ];
}
