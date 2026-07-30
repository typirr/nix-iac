{ config, pkgs, ... }:{
 
 environment.systemPackages = [
   pkgs.sops
   pkgs.age
 ];

 sops = {
   defaultSopsFile = ../../secrets/secrets.yaml;
   defaultSopsFormat = "yaml";
   age.keyFile = "/home/main/.config/sops/age/key.txt";
 };

}
