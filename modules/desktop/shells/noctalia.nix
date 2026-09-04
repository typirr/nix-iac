{ inputs, ... }:

{
  imports = [
    inputs.noctalia.nixosModules.default
  ];

  programs.noctalia.enable = true;
}
