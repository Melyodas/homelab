{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # dev tools
    jetbrains.rust-rover

    # Fonts
    font-awesome font-awesome_4
    powerline    powerline-fonts

    # Communication
    discord
    thunderbird-bin
    slack

    # desktop
    evince
    firefox
    enpass

    # audio / video
    pavucontrol
    spotify
    vlc

    # image processing
    inkscape gimp feh scrot

    # system config
    arandr
  ];

  imports = [ ./common.nix ./i3.nix ./kitty.nix ];

  home.pointerCursor = {
    x11.enable = true;
    package = pkgs.vanilla-dmz;
    name = "Adwaita";
    size = 24;
  };

  fonts.fontconfig.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
    documentation.dev.enable = true;
    xdg.portal.enable = false;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";
}
