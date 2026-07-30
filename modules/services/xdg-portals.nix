{ config, pkgs, lib, ... }:

{
  options.custom.xdg.portals.implementations = lib.mkOption {
    type = lib.types.listOf lib.types.package;
    default = [];
  };

  config = {
    xdg.portal = {
      enable = true;

      extraPortals = config.custom.xdg.portals.implementations;

      config.common.default = "*";
    };
  };
}
