rec {
  common = import ./common;
  services = import ./services;

  modules =
    { pkgs, ... }:
    {
      imports = [
        common
        services
      ];
    };
}
