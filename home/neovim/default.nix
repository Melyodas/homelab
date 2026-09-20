{
  inputs,
  ...
}:

{
  imports = [ inputs.nixvim.homeModules.nixvim ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    globals.mapleader = " ";

    imports = [
      ./options.nix
      ./bepo.nix
      ./plugins
    ];
  };
}
