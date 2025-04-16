{ ... }:

{
  # Add docker
  virtualisation.docker.enable = true;

  # Add libvirt
  virtualisation.libvirtd = {
    enable = true;
    qemu.ovmf.enable = true; # enable UEFI boot in VM
  }; # Set groups and a password for the main login user.

  users.users.melyodas = {
    extraGroups = [
      "docker"
      "libvirtd"
    ];
  };
}
