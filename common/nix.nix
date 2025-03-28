{ ... }:

let
  my = import ../.;
in
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}