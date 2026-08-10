# HOW TO INSTALL? - 7 simple steps

## 1- Be the root user
``` sudo -i ```

## 2- Connect to the internet
``` nmtui ```

## 3- Clone config
``` git clone https://github.com/typirr/nix-iac ```
``` cd nix-iac ```

## 4- Check available hosts
``` tree hosts/ ```

## 5- Verify disko configuration
``` cat hosts/<use-case>/<hostname>/disko.nix ```

## 6- Partition
``` disko --mode destroy,format,mount hosts/<use-case>/<hostname>/disko.nix ```

## 7- Install
``` nixos-install --flake .#<use-case>/<hostname> ```

## Congrats, you now have a fully functional rock solid system exactly like mine!
