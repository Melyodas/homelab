{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    agenix.url = "github:ryantm/agenix";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      nixvim,
      agenix,
      ...
    }@inputs:
    let
      inherit (self) outputs;

      mkNixosSystem = { module }: inputs.nixpkgs.lib.nixosSystem {
        modules = [
          module
        ];
        specialArgs.inputs = inputs;
      };

    in
    {
      nixosConfigurations.claptrap = mkNixosSystem {
        module = ./machines/claptrap;
      };

      nixosConfigurations.xana = mkNixosSystem {
        module = ./machines/xana;
      };
    };
}
