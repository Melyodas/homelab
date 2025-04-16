{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
      self,
      nixpkgs,
      nixos-hardware,
      home-manager,
      nixvim,
      ...
  }@inputs : let
    inherit (self) outputs;
  in {
    nixosConfigurations.claptrap = nixpkgs.lib.nixosSystem {
      modules = [
        ./machines/claptrap
        # make home-manager as a module of nixos
        # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
        home-manager.nixosModules.home-manager
        {
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.useUserPackages = true;

          home-manager.users.melyodas = import ./home/graphical.nix;
        }
      ];
    };
    nixosConfigurations.xana = nixpkgs.lib.nixosSystem {
      modules = [
        ./machines/xana
        nixos-hardware.nixosModules.raspberry-pi-4

        # make home-manager as a module of nixos
        # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
        home-manager.nixosModules.home-manager
        {
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.useUserPackages = true;

          home-manager.users.melyodas = import ./home/common.nix;
        }
      ];
    };
  };
}
