{
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
}
