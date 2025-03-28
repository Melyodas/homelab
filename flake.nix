{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = {
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      ...
  }@inputs: {
    nixosConfigurations.claptrap = nixpkgs.lib.nixosSystem {
      modules = [
        ./machines/claptrap
      ];
    };
    nixosConfigurations.xana = nixpkgs.lib.nixosSystem {
      modules = [
        ./machines/xana
        nixos-hardware.nixosModules.raspberry-pi-4
      ];
    };
  };
}
