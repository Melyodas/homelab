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
    services.xserver.enable = true;
    services.xserver.windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };

    # Enable touchpad support (enabled default in most desktopManager).
    services.xserver.libinput.enable = true;

    # Configure keymap in X11
    services.xserver.layout = "fr";
    services.xserver.xkbVariant = "bepo";
    services.xserver.xkbOptions = "caps:escape";
    services.upower.enable = true; # enable org.freedesktop.UPower
  };
}
