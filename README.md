# About

This repository contains my nix configuration file.
Some configuration are for the keyboard layout bépo.

# Credits

The polybar theme is the ``cuts`` theme by [adi1090x](https://github.com/adi1090x/polybar-themes).

# Usage

Get [home-manager](https://github.com/nix-community/home-manager).
Clone this repo in ``~/.config/nixpkgs``.
Run ``home-manager``.

```
nix-channel --add https://github.com/nix-community/home-manager/archive/release-20.09.tar.gz home-manager
nix-channel --update
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
nix-shell '<home-manager>' -A install
git clone git@github.com:Melyodas/nixpkgs.git ~/.config/nixpkgs
home-manager switch
```
