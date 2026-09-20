{ ... }:

{
  # Add docker
  virtualisation.docker.enable = true;

  # Add libvirt
  virtualisation.libvirtd = {
    enable = true;
  }; # Set groups and a password for the main login user.

  users.users.melyodas = {
    extraGroups = [
      "docker"
      "libvirtd"
    ];
  };
}
