rec {
  common = import ./common;

  modules =
    { pkgs, ... }:
    {
      imports = [
        common
      ];
    };
}
