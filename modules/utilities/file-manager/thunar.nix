{ config, pkgs, lib, ... }:{

  environment.systemPackages = [
    pkgs.thunar
    pkgs.thunar-archive-plugin
    pkgs.thunar-media-tags-plugin
    pkgs.thunar-vcs-plugin
    pkgs.thunar-volman
    pkgs.gvfs # trash, auto-mounting, etc...
  ];
}
