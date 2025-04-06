{
  inputs,
  ...
}:

{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    imports = [
      ./options.nix
      ./bepo.nix
      ./plugins
    ];
  };
}
