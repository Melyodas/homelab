{
  inputs,
  ...
}:

let
  my = import ../..;
in
{
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.raspberry-pi-4
    my.modules
  ];

  my.services.openhab.enable = true;
  my.services.pihole.enable = true;

  networking.hostName = "xana";

  services.openssh.enable = true;

  programs.nix-ld.enable = true;

  programs.dconf.enable = true;

  # Enable GPU acceleration
  hardware.raspberry-pi."4".fkms-3d.enable = true;

  system.stateVersion = "22.11";
}
