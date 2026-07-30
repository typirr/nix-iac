{ config, lib, pkgs, ... }:{
 
 environment.systemPackages = [
   pkgs.pulseaudio
 ];

 services.pipewire = {
     enable = true;
     pulse.enable = true;
     alsa.enable = true;
 };

}
