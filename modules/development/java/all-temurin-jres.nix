{ pkgs, ... }:{

 environment.systemPackages = [
   pkgs.temurin-jre-bin-8
   pkgs.temurin-jre-bin-11
   pkgs.temurin-jre-bin-17
   pkgs.temurin-jre-bin-21
   pkgs.temurin-jre-bin-25
 ];

}
