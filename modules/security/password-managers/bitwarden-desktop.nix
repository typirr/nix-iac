{ pkgs, ... }:{

 environment.systemPackages = [ pkgs.bitwarden-desktop ];
 nixpkgs.config.permittedInsecurePackages = [
  "electron-39.8.10"
 ];
}

