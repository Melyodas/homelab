{ ... }:

{
  console.font = "Lat2-Terminus16";
  console.keyMap = "fr-bepo";

  programs.zsh.enable = true;

  home-manager.users.melyodas = import ../home/common.nix;
}
