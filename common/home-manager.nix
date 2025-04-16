{
  inputs,
  ...
}:
{
  # make home-manager as a module of nixos
  # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager.extraSpecialArgs = { inherit inputs; };
  home-manager.useUserPackages = true;
}
