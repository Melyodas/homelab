{
  config,
  lib,
  pkgs,
  ...
}:

{
  options = {
    my.graphical.enable = lib.mkEnableOption "Grapcical interface specific configuration";
  };

  config = lib.mkIf config.my.graphical.enable {
    environment.systemPackages = with pkgs; [
      notify-osd
      firefox
    ];

    services.xserver.enable = true;

    services.xserver.windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };

    # Configure keymap in X11
    services.xserver.xkb = {
      layout = "fr";
      variant = "bepo";
      options = "caps:escape";
    };

    # Enable touchpad support (enabled default in most desktopManager).
    services.libinput.enable = true;
    # Enable org.freedesktop.UPower
    services.upower.enable = true;
  };
}
