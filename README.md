# About

This repository contains my nix configuration file.
Some configuration are for the keyboard layout bépo.

# Credits

The polybar theme is the ``cuts`` theme by [adi1090x](https://github.com/adi1090x/polybar-themes).

# Usage

```
sudo nix-channel --add https://nixos.org/channels/nixos-26.05 nixos
sudo nix-channel --update
sudo nixos-rebuild switch --flake .#machine
```
