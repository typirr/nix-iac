# HOW TO INSTALL !?

## Be the root user
``` sudo -i ```

## Connect to the internet
``` nmtui ```

## Clone config
``` git clone https://github.com/typirr/nix-iac ```
``` cd nix-iac ```

## Check available hosts
``` ls hosts/ ```

## Verify disko configuration
``` cat hosts/<hostname>/disko.nix ```

## Partition
``` disko --mode destroy,format,mount hosts/<hostname>/disko.nix ```

## Install
``` nixos-install --flake .#<hostname> ```
