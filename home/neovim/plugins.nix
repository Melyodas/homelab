{
    # Outline
    plugins.aerial.enable = true;

    # Status bar
    plugins.airline.enable = true;

    # Tabline
    plugins.barbar.enable = true;

    # Bufferline ?
    plugins.bufferline.enable = true;

    # Color picker
    plugins.ccc.enable = true;
    # colorizer

    # File manager
    plugins.chadtree.enable = true;

    # Completion
    # plugins.cmp.enable = true;
    plugins.lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        nil_ls = {
          enable = true;
        };
      };
    };

    # Completion improvements
    # colorful-menu

    # QOL
    plugins.which-key.enable = true;

    # Funstuff
    # codesnap
    #
    #
}
