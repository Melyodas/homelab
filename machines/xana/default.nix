{ config, pkgs, lib, ... }:

let
  my = import ../..;
in {
  imports = [
    ./hardware-configuration.nix
  ];

  my.services.openhab.enable = true;

  networking.hostName = "xana";

  services.openssh.enable = true;

  programs.nix-ld.enable = true;

  programs.dconf.enable = true;

  # Enable GPU acceleration
  hardware.raspberry-pi."4".fkms-3d.enable = true;

  system.stateVersion = "22.11";
}
