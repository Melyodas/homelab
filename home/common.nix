{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # dev tools
    lldb
    rustup

    python3

    (lib.hiPrio gcc)
    (lib.lowPrio clang)

    binutils clang-tools
    cmake    gdb
    gnumake  linuxPackages.perf
    universal-ctags

    ripgrep

    # CLI utils
    killall file htop time tree
    unzip zip bat ncdu

    # networking
    aria2 rsync
  ];

  imports = [ ./neovim.nix ];

  home.sessionVariables = {
    EDITOR = "nvim";
    SSH_KEY_PATH = "~/.ssh/rsa_id";
    GIT_EDITOR = "nvim";
    QT_AUTO_SCREEN_SCALE_FACTOR = "0";
  };

  nixpkgs.config = {
    allowUnfree = true;
    documentation.dev.enable = true;
  };

  manual.manpages.enable = true;

  programs.direnv = {
    enable = true;
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    autocd = true;
    history.extended = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "sudo" "ssh-agent" "colored-man-pages" "git" ];
    };

    shellAliases = {
      ls = "ls --color=auto";
      la = "ls -a";
      ll = "ls -l";
      lla = "ls -la";

      glog = "git log --oneline --graph --all";

      cdtmp = "cd `mktemp -d`";
    };

    initExtra = "unsetopt BEEP";

    sessionVariables = {
      EDITOR = "nvim";
      SSH_KEY_PATH = "~/.ssh/rsa_id";
      GIT_EDITOR = "nvim";
      QT_AUTO_SCREEN_SCALE_FACTOR = "0";
    };

  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
    };
  };

  programs.git = {
    enable = true;
    userEmail = "matthieu.moatti@epita.fr";
    userName = "Matthieu Moatti";
    ignores = [ "*.o" "*.a" "*.so" "*.pyc" "tags" ".envrc" ".vscode" ];
    includes = [ { path = "~/.config/nixpkgs/configs/gitconfig"; } ];
    diff-so-fancy.enable = true;
  };

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "melyodas";
  home.homeDirectory = "/home/melyodas";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";
}
