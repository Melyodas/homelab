{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
  ];

  programs.neovim = {
    defaultEditor = true;
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = builtins.readFile ./configs/init.vim
                  + builtins.readFile ./configs/bepo.vim;

    plugins = with pkgs.vimPlugins; [
        mason-nvim
        mason-lspconfig-nvim
    ];
  };
}
