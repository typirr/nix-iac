{ config, pkgs, lib, ... }:{

  environment.systemPackages = [
    pkgs.xarchiver
    pkgs.p7zip
    pkgs.zip
    pkgs.unzip
    pkgs.rar
    pkgs.unrar
    pkgs.bzip2
    pkgs.gzip
    pkgs.arj
    pkgs.binutils # for "ar"
  ];
}
