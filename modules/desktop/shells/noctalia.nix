{ inputs, config, ... }:
{
  imports = [
    inputs.noctalia.nixosModules.default
  ];

  programs.noctalia = {
    enable = true;
    recommendedServices.enable = true;
  };

  # the cache, THAT MIGHT VIOLATE THE "one file for one purpose" rule but that is unavoidable,
  # or every machine would just compile the whole fucking thing everytime :)
  nix.settings = {
    extra-substituters = [ "https://noctalia.cachix.org" ];
    extra-trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
  };
}
