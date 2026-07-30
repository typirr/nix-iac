{
  description = "IaC";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    venXlibre = {
      url = "git+https://codeberg.org/takagemacoed/xlibre-overlay";
    };
  };

  outputs = { self, nixpkgs, sops-nix, home-manager, disko, venXlibre, ... }:{
  
    nixosConfigurations = {
      

      core-af-0001 = nixpkgs.lib.nixosSystem {
        # an i5-4570 with iGPU HD 4600 and 500GB HDD located in home1 africa/egypt
	system = "x86_64-linux";        
	modules = [
          ./hosts/personal/core-af-0001/default.nix
          sops-nix.nixosModules.sops
	  disko.nixosModules.disko
          home-manager.nixosModules.home-manager 
	  {
            home-manager.backupFileExtension = "hmbackup";
	    home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.core = import ./users/core/home.nix; 
	    home-manager.users.alpha = import ./users/alpha/home.nix;
	  }
          venXlibre.nixosModules.overlay-xlibre-xserver
	  venXlibre.nixosModules.overlay-all-xlibre-drivers
	];
      
      };
    
    };
  
  };
}
