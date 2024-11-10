{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    # dev tools
    rustup

    python3

    (lib.hiPrio gcc)
    (lib.lowPrio clang)

    binutils clang-tools
    cmake    gdb
    gnumake  linuxPackages.perf
    universal-ctags
    vscode

    # Fonts
    font-awesome font-awesome_4
    powerline    powerline-fonts

    # CLI utils
    killall file htop time tree
    unzip zip bat ncdu

    # Communication
    discord
    thunderbird-bin
    slack

    # networking
    aria2 rsync

    # desktop
    evince
    firefox
    enpass

    # audio / video
    pavucontrol
    spotify
    vlc

    # image processing
    gimp feh scrot

    # system config
    arandr
  ];

  imports = [ ./i3.nix ./neovim.nix ./kitty.nix ];

  home.pointerCursor = {
    x11.enable = true;
    package = pkgs.vanilla-dmz;
    name = "Adwaita";
    size = 24;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    SSH_KEY_PATH = "~/.ssh/rsa_id";
    GIT_EDITOR = "nvim";
    QT_AUTO_SCREEN_SCALE_FACTOR = "0";
  };

  fonts.fontconfig.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
    documentation.dev.enable = true;
    xdg.portal.enable = false;
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
    ignores = [ "*.o" "*.a" "*.so" "*.pyc" "tags" ".envrc" ];
    includes = [ { path = "~/.config/nixpkgs/configs/gitconfig"; } ];
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

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
