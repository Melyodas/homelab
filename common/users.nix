{ lib, pkgs, home-manager, ... }:

{
  users.groups.melyodas = {
    gid = 1000;
  };
  users.users.melyodas = {
    isNormalUser = true;
    home = "/home/melyodas";
    description = "Matthieu Moatti";
    extraGroups = [ "wheel" "networkmanager" "docker" "video" "libvirtd" ];
    shell = pkgs.zsh;
  };
}

