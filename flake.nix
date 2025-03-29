{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      ...
  }@inputs : let
    inherit (self) outputs;
  in {
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

    homeConfigurations = {
      "melyodas@claptrap" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs outputs;};
        # > Our main home-manager configuration file <
        modules = [./common/home/home.nix];
      };
      "melyodas@xana" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.armv7l-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs outputs;};
        # > Our main home-manager configuration file <
        modules = [./common/home/home.nix];
      };
    };
  };
}
