{ config, pkgs, ... }:{

 fonts = {
   enableDefaultPackages = true;
   packages = with pkgs; [ nerd-fonts.jetbrains-mono ];
   fontconfig.enable = true;
 };

}
