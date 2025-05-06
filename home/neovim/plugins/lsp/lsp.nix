{
  # Completion
  # plugins.cmp.enable = true;
  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
      # Nix
      nil_ls = {
        enable = true;
      };
    };
  };
}
