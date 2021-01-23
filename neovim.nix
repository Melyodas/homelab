{ config, pkgs, lib, ... }:

### Linter
# Ale
#
### Git
# auto-git-diff
#
### Brackets
# auto-pairs
#
# Color scheme
# Awesome Vim Color schemes
#


{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = builtins.readFile ./configs/init.vim
                  + builtins.readFile ./configs/bepo.vim;

    plugins = with pkgs.vimPlugins; [
      # Auto completion for c++
      deoplete-nvim
      deoplete-clang
      # Auto completion for rust
      vim-racer
      # Auto format
      neoformat
      # Linter
      neomake
      #Integration of git
      vim-fugitive
      # Better buffer view
      vim-airline
      vim-airline-themes
      # Automatic closing braces and brackets
      delimitMate
      # Snippets
      vim-snippets
      ultisnips
      # Tag management
      vim-gutentags
      # Rust syntax highlighting
      rust-vim
      # Support nix files
      vim-nix
    ];
  };
}
