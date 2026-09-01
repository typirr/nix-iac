{ config, pkgs, ... }:{
 
 # Options

 nixpkgs.config.allowUnfree = true;

 # Imports

 imports = [
  ./hardware.nix
  ./system.nix
  ./disko.nix

  ../../../users/core/default.nix
  ../../../users/alpha/default.nix

  ../../../modules/security/sops.nix 
  ../../../modules/security/gnome-keyring.nix
  ../../../modules/security/polkit.nix
  ../../../modules/security/password-managers/keepassxc.nix

  ../../../modules/social/xmpp/gajim.nix
  ../../../modules/social/xmpp/dino.nix
  ../../../modules/social/mumble.nix
  ../../../modules/social/vesktop.nix
  
  ../../../modules/web-browser/firefox.nix
  ../../../modules/web-browser/tor-browser.nix
  
  ../../../modules/media/players/mpv.nix
  ../../../modules/media/streaming/obs-studio.nix 
  ../../../modules/media/images/feh.nix
  ../../../modules/media/reading/foliate.nix
  ../../../modules/media/reading/calibre.nix
  
  ../../../modules/screenshot/flameshot.nix
  
  ../../../modules/services/syncthing.nix
  ../../../modules/services/rustdesk.nix
  ../../../modules/services/xdg-portals.nix
  
  ../../../modules/audio/pipewire.nix
  ../../../modules/audio/pavucontrol.nix
  ../../../modules/audio/qpwgraph.nix

  ../../../modules/desktop/windowmanager/i3.nix
  ../../../modules/desktop/displaymanager/ly.nix
  ../../../modules/desktop/tools/rofi.nix   
  ../../../modules/desktop/tools/nitrogen.nix
  ../../../modules/desktop/tools/lxrandr.nix
  
  ../../../modules/utilities/qbittorrent.nix
  ../../../modules/utilities/archive-software.nix
  ../../../modules/utilities/appimage-run.nix
  ../../../modules/utilities/file-manager/thunar.nix
  ../../../modules/utilities/terminal-emulators/alacritty.nix
  ../../../modules/utilities/multiplexers/zellij.nix
  ../../../modules/utilities/package-managers/flatpak.nix
  ../../../modules/utilities/office/libreoffice.nix
  ../../../modules/utilities/office/onlyoffice.nix
  ../../../modules/development/java/all-temurin-jres.nix
  
  ../../../modules/virtualization/virt-manager.nix
  ../../../modules/virtualization/qemu.nix

  ../../../modules/gaming/launchers/lutris.nix
  ../../../modules/gaming/launchers/heroic.nix
  ../../../modules/gaming/overlays/mangohud.nix
  ../../../modules/gaming/stores/steam.nix
  ../../../modules/gaming/compatibility/wine.nix
  ../../../modules/gaming/compatibility/installers/protonplus.nix
  ../../../modules/gaming/compatibility/installers/protonup-qt.nix
  
  ../../../modules/networking/cloudflare-warp.nix
  ../../../modules/networking/dns.nix
  ../../../modules/networking/tor.nix
  ../../../modules/networking/networkmanager.nix
  ../../../modules/networking/vpn/proton-vpn.nix

  ../../../modules/fonts/jetbrains-mono-nerdfonts.nix
 ];
 
 # Variables

 custom.xdg.portals.implementations = [ pkgs.xdg-desktop-portal-termfilechooser pkgs.xdg-desktop-portal-gtk ];
}
