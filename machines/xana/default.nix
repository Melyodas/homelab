{ config, pkgs, lib, ... }:

let
  my = import ./.;
in {
  imports = [
    ./hardware-configuration.nix
    ./openhab.nix
    ./grocy.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking = {
    hostName = "xana";
  };

  environment.systemPackages = with pkgs; [
    vim
    firefox
  ];

  services.openssh.enable = true;

  programs.nix-ld.enable = true;

  virtualisation.docker.enable = true;

  programs.dconf.enable = true;

  users = {
    users.melyodas = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
    };
  };

  # Enable GPU acceleration
  hardware.raspberry-pi."4".fkms-3d.enable = true;
  services.xserver = {
    enable = true;
    desktopManager.xfce.enable = true;

    layout = "fr";
    xkbVariant = "bepo";
    xkbOptions = "caps:escape";
  };

  system.stateVersion = "22.11";
}
